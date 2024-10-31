import 'package:flutter/material.dart';
import 'dart:async';
import 'login_page.dart';

class TeamIntroPage extends StatefulWidget {
  @override
  _TeamIntroPageState createState() => _TeamIntroPageState();
}

class _TeamIntroPageState extends State<TeamIntroPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () {
      // Chuyển đến trang đăng nhập sau 10 giây
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Giới thiệu thành viên nhóm"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Danh sách thành viên:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Thêm danh sách thành viên
            MemberWidget(name: "Võ Chí Khương", role: "Quản lý"),
            MemberWidget(name: "Huỳnh Nam Duy", role: "Nhân viên"),
            MemberWidget(name: "Trần Đức Vinh", role: "Nhân viên"),
            // Thêm các thành viên khác ở đây
          ],
        ),
      ),
    );
  }
}

// Widget để hiển thị thông tin thành viên
class MemberWidget extends StatelessWidget {
  final String name;
  final String role;

  MemberWidget({required this.name, required this.role});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            role,
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
          Divider(),
        ],
      ),
    );
  }
}
