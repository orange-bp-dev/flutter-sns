import 'package:flutter/material.dart';
import 'package:udemy_flutter_sns/details/circle_image.dart';

class UserImage extends StatelessWidget {
  const UserImage(
      {super.key, required this.length, required this.userImageURL});
  final double length;
  final String userImageURL;

  @override
  Widget build(BuildContext context) {
    return userImageURL.isEmpty
        ? Container(
            width: length,
            height: length,
            child: Icon(Icons.person, size: length),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              shape: BoxShape.circle,
            ),
          )
        : CircleImage(length: length, image: NetworkImage(userImageURL));
  }
}
