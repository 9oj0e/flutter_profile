import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFollowButton(),
        _buildMessageButton(),
      ],
    );
  }

  Widget _buildFollowButton() {
    return InkWell(
      onTap: () {
        print("Follow 버튼 클릭됨");
      },
      child: Container(
        alignment: Alignment.center, // 내부 Text 가운데 정렬
        width: 150,
        height: 45,
        child: Text(
          "Follow",
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10), // 모서리 둥글게
        ),
      ),
    );
  }

  Widget _buildMessageButton() {
    return InkWell(
      onTap: () {
        print("Message 버튼 클릭됨");
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text(
          "Message",
          style: TextStyle(color: Colors.black),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(), // 테두리 선 추가
        ),
      ),
    );
  }
}
