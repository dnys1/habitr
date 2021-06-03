import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habitr/models/User.dart';
import 'package:habitr/services/storage_service.dart';
import 'package:provider/provider.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar(this.user, {Key? key}) : super(key: key);

  final User user;

  Future<String?> _userAvatarUrl(StorageService storageService) async {
    if (user.avatar == null) {
      return null;
    }
    return storageService.getImageUrl(user.avatar!.key);
  }

  @override
  Widget build(BuildContext context) {
    final storageService = Provider.of<StorageService>(context, listen: false);
    return FutureBuilder<String?>(
      future: _userAvatarUrl(storageService),
      builder: (context, snapshot) {
        final url = snapshot.hasData ? snapshot.data : null;
        return LayoutBuilder(
          builder: (context, constraints) {
            final radius = constraints.biggest.shortestSide / 4;
            return CircleAvatar(
              backgroundColor: Colors.grey[200],
              radius: radius,
              child: url != null
                  ? CachedNetworkImage(
                      imageUrl: url,
                      imageBuilder: (context, imageProvider) {
                        return Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                          ),
                        );
                      },
                      placeholder: (context, url) =>
                          const CupertinoActivityIndicator(),
                    )
                  : Icon(Icons.perm_identity, size: radius),
            );
          },
        );
      },
    );
  }
}
