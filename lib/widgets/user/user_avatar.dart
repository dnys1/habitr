import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:amplify_flutter/amplify_flutter.dart';
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
    this.imageBytes,
    this.imageUrl,
    this.username,
    this.onTap,
    this.selectImage,
    this.isThumbnail = false,
    this.isEditing = false,
    super.key,
  }) : assert(
          user != null || username != null,
          'Either user or username must be provided',
        );

  final User? user;
  final String? username;

  final Uint8List? imageBytes;
  final String? imageUrl;

  /// Whether or not the image is shown as a thumbnail.
  final bool isThumbnail;

  /// Overrides when the photo can be edited.
  final bool canEdit;

  /// Overrides the default tap action.
  final void Function()? onTap;

  /// The function to call to select a new image.
  final FutureOr<void> Function()? selectImage;

  /// Whether or not the image is being edited.
  ///
  /// An overlay will be shown to indicate it can be tapped.
  final bool isEditing;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final authService = Provider.of<AuthService>(context, listen: false);
        final userRepository =
            Provider.of<UserRepository>(context, listen: false);
        return UserAvatarViewModel(
          authService: authService,
          userRepository: userRepository,
          username: username ?? user!.username,
        );
      },
      builder: (context, _) {
        return _UserAvatarView(
          Provider.of(context),
          canEdit: canEdit,
          onTap: onTap,
          selectImage: selectImage,
          imageBytes: imageBytes,
          imageUrl: imageUrl,
          isThumbnail: isThumbnail,
          isEditing: isEditing,
        );
      },
    );
  }
}

class _UserAvatarView extends StatefulWidget {
  const _UserAvatarView(
    this.viewModel, {
    this.onTap,
    this.selectImage,
    required this.canEdit,
    required this.isEditing,
    required this.isThumbnail,
    this.imageBytes,
    this.imageUrl,
  });

  final UserAvatarViewModel viewModel;
  final FutureOr<void> Function()? selectImage;
  final void Function()? onTap;
  final bool canEdit;
  final bool isEditing;
  final bool isThumbnail;
  final Uint8List? imageBytes;
  final String? imageUrl;

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
          child: ColoredBox(
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

  Widget childForRadius(double radius, String? url) {
    if (widget.viewModel.isBusy) {
      return const CupertinoActivityIndicator();
    }

    if (url == null) {
      return Icon(
        Icons.perm_identity,
        size: radius,
      );
    }
    return CachedNetworkImage(
      imageUrl: url,
      imageBuilder: (context, imageProvider) {
        return Stack(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  // TODO(dnys1): Make responsive
                  fit: BoxFit.fitHeight,
                ),
                shape: BoxShape.circle,
              ),
            ),
            if (widget.isEditing)
              CircleAvatar(
                radius: radius,
                backgroundColor: Colors.white.withOpacity(0.5),
                child: Icon(Icons.edit, size: radius / 2),
              )
          ],
        );
      },
      placeholder: (context, url) => const CupertinoActivityIndicator(),
      errorWidget: (context, String _, dynamic __) => Icon(
        Icons.perm_identity,
        size: radius,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final radius = max<double>(constraints.biggest.shortestSide / 4, 40);

        return Selector2<UserRepository, StorageService, String?>(
          selector: (context, userRepo, storageService) {
            if (widget.viewModel.isBusy) return null;
            final user = userRepo.get(widget.viewModel.user.username)!;
            final key = user.avatar?.key;
            if (key == null) {
              return null;
            }
            return storageService.get(key);
          },
          builder: (context, url, child) {
            ImageProvider? provider;
            final imageBytes = widget.imageBytes;
            final imageUrl = url ?? widget.imageUrl;
            if (imageBytes != null) {
              provider = MemoryImage(imageBytes);
            } else if (imageUrl != null) {
              if (imageUrl.startsWith('http')) {
                provider = CachedNetworkImageProvider(imageUrl);
              } else if (!zIsWeb) {
                provider = FileImage(File(imageUrl));
              }
            }
            return GestureDetector(
              onTap: getAction(url),
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: radius,
                foregroundImage: provider,
                // TODO(dnys1): Not working
                child: childForRadius(radius, imageUrl),
              ),
            );
          },
        );
      },
    );
  }
}
