import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/repos/user_repository.dart';
import 'package:habitr/services/auth_service.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:habitr/widgets/user/user_avatar_viewmodel.dart';
import 'package:provider/provider.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    this.canEdit = true,
    this.user,
    this.image,
    this.username,
    this.onTap,
    this.selectImage,
    this.isThumbnail = false,
    Key? key,
  })  : assert(
          user != null || username != null,
          'Either user or username must be provided',
        ),
        super(key: key);

  final User? user;
  final String? username;

  final File? image;

  /// Whether or not the image is shown as a thumbnail.
  final bool isThumbnail;

  /// Overrides when the photo can be edited.
  final bool canEdit;

  /// Overrides the default tap action.
  final void Function()? onTap;

  /// The function to call to select a new image.
  final FutureOr<void> Function()? selectImage;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final authService = Provider.of<AuthService>(context, listen: false);
        final storageService =
            Provider.of<StorageService>(context, listen: false);
        final userRepository =
            Provider.of<UserRepository>(context, listen: false);
        return UserAvatarViewModel(
          storageService: storageService,
          authService: authService,
          userRepository: userRepository,
          user: user,
          username: username,
        );
      },
      builder: (context, _) {
        return _UserAvatarView(
          Provider.of(context),
          canEdit: canEdit,
          onTap: onTap,
          selectImage: selectImage,
          image: image,
          isThumbnail: isThumbnail,
        );
      },
    );
  }
}

class _UserAvatarView extends StatefulWidget {
  final UserAvatarViewModel viewModel;
  final FutureOr<void> Function()? selectImage;
  final void Function()? onTap;
  final bool canEdit;
  final bool isThumbnail;
  final File? image;

  const _UserAvatarView(
    this.viewModel, {
    this.onTap,
    this.selectImage,
    required this.canEdit,
    required this.isThumbnail,
    this.image,
    Key? key,
  }) : super(key: key);

  @override
  _UserAvatarViewState createState() => _UserAvatarViewState();
}

class _UserAvatarViewState extends State<_UserAvatarView> {
  Future<void> _viewImage(String url) async {
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

  void Function()? getAction(String? url) {
    if (widget.onTap != null) {
      return widget.onTap;
    }
    if (widget.viewModel.isBusy || widget.isThumbnail) {
      return null;
    }
    if (widget.viewModel.canEditPhoto &&
        widget.canEdit &&
        widget.selectImage != null) {
      return widget.selectImage;
    }
    if (url != null) {
      return () => _viewImage(url);
    }
    return null;
  }

  Widget childForRadius(double radius) {
    if (widget.viewModel.isBusy) {
      return const CupertinoActivityIndicator();
    }

    var url = widget.viewModel.url;
    if (url == null) {
      return Icon(
        Icons.perm_identity,
        size: radius,
      );
    }
    return CachedNetworkImage(
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
      placeholder: (context, url) => const CupertinoActivityIndicator(),
      errorWidget: (context, _, __) => Icon(
        Icons.perm_identity,
        size: radius,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var url = widget.viewModel.url;
    return LayoutBuilder(
      builder: (context, constraints) {
        final radius = max(constraints.biggest.shortestSide / 4, 40.0);
        return GestureDetector(
          onTap: getAction(url),
          child: CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: radius,
            foregroundImage:
                widget.image != null ? FileImage(widget.image!) : null,
            child: childForRadius(radius),
          ),
        );
      },
    );
  }
}
