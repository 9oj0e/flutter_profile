import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        _buildHeaderAvater(),
        SizedBox(width: 20),
        _buildHeaderProfile(),
      ],
    );
  }

  SizedBox _buildHeaderProfile() => SizedBox(width: 20);

  SizedBox _buildHeaderAvater() => SizedBox(width: 20);
}
