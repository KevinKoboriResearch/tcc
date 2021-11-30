import 'package:flutter/material.dart';
import 'package:tcc/core/utils/consts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.azulClaro,
      body: Center(
        child: Text('Profile page'),
      ),
    );
  }
}
