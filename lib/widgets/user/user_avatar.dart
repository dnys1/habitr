import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/widgets/user/user_avatar_viewmodel.dart';
import 'package:provider/provider.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    this.canEdit = true,
    this.user,
    this.onImageSelected,
    this.onTap,
    Key? key,
  }) : super(key: key);

  final User? user;

  /// Overrides when the photo can be edited.
  final bool canEdit;

  /// A callback for when a user selects an image.
  final void Function(File)? onImageSelected;

  /// Overrides the default tap action.
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final authService = Provider.of<AuthService>(context, listen: false);
        final storageService =
            Provider.of<StorageService>(context, listen: false);
        return UserAvatarViewModel(
          storageService: storageService,
          authService: authService,
        );
      },
      builder: (context, _) {
        return _UserAvatarView(
          Provider.of(context),
          canEdit: canEdit,
          onTap: onTap,
          onImageSelected: onImageSelected,
        );
      },
    );
  }
}

class _UserAvatarView extends StatelessWidget {
  final UserAvatarViewModel viewModel;
  final void Function(File)? onImageSelected;
  final void Function()? onTap;
  final bool canEdit;

  const _UserAvatarView(
    this.viewModel, {
    this.onTap,
    this.onImageSelected,
    required this.canEdit,
    Key? key,
  }) : super(key: key);

  Future<void> _selectImage() async {
    final image = await viewModel.pickImage();
    if (image != null) {
      onImageSelected?.call(image);
    }
  }

  Future<void> _viewImage(BuildContext context, String url) async {
    return showDialog(
      context: context,
      useSafeArea: false,
      builder: (context) {
        return GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            color: Colors.black,
            child: CachedNetworkImage(imageUrl: url),
          ),
        );
      },
    );
  }

  void Function()? getAction(BuildContext context, String? url) {
    if (onTap != null) {
      return onTap;
    }
    if (viewModel.isBusy) {
      return null;
    }
    if (viewModel.canEditPhoto && canEdit) {
      return _selectImage;
    }
    if (url != null) {
      return () => _viewImage(context, url);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final storageService = Provider.of<StorageService>(context, listen: false);
    return FutureBuilder<String?>(
      future: viewModel.avatarUrl(storageService),
      builder: (context, snapshot) {
        final url = snapshot.hasData ? snapshot.data : null;
        return LayoutBuilder(
          builder: (context, constraints) {
            final radius = max(constraints.biggest.shortestSide / 4, 40.0);
            return GestureDetector(
              onTap: getAction(context, url),
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: radius,
                foregroundImage: viewModel.image != null
                    ? FileImage(viewModel.image!)
                    : null,
                child: url != null
                    ? CachedNetworkImage(
                        imageUrl: url,
                        imageBuilder: (context, imageProvider) {
                          return Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                // TODO: Make responsive
                                fit: BoxFit.fitHeight,
                              ),
                              shape: BoxShape.circle,
                            ),
                          );
                        },
                        placeholder: (context, url) =>
                            const CupertinoActivityIndicator(),
                        errorWidget: (context, _, __) => Icon(
                          Icons.perm_identity,
                          size: radius,
                        ),
                      )
                    : Icon(
                        Icons.perm_identity,
                        size: radius,
                      ),
              ),
            );
          },
        );
      },
    );
  }
}
