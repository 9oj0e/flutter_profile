import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_profile/theme.dart';

import 'components/profile_buttons.dart';
import 'components/profile_count_info.dart';
import 'components/profile_drawer.dart';
import 'components/profile_header.dart';
import 'components/profile_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      appBar: _buildProfileAppBar(),
      body: Column(
        children: [
          SizedBox(height: 20),
          ProfileHeader(),
          SizedBox(height: 20),
          ProfileCountInfo(),
          SizedBox(height: 20),
          ProfileButtons(),
          // 남아 있는 세로 공간을 모두 차지하기 위해 Expanded
          Expanded(child: ProfileTab()),
        ],
      ),
    );
  }
}

AppBar _buildProfileAppBar() {
  return AppBar(
    leading: Icon(Icons.arrow_back_ios),
    title: Text("Profile"),
    centerTitle: true,
  );
}