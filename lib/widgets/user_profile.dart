import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String profile;
  final double radius;
  final bool isNetwork;

  const Profile(
      {super.key,
      required this.profile,
      required this.radius,
      this.isNetwork = false});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: isNetwork
          ? NetworkImage(profile) as ImageProvider<Object>
          : AssetImage(profile),
      radius: radius,
    );
  }
}
