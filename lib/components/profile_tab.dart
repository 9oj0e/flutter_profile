import 'package:flutter/material.dart';

// app이 실행되고 난 뒤 사용자 요청에 따라 동적으로 변경되는 Stateful한 widget이 필요.
class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        _buildTabBarView(),
      ],
    );
  }

  SizedBox _buildTabBar() => SizedBox();

  SizedBox _buildTabBarView() => SizedBox();
}
