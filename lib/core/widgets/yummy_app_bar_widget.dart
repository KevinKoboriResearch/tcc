import 'package:flutter/material.dart';

class YummyAppBarWidget extends StatelessWidget {
  final String tittle;
  final bool backArrow;
  const YummyAppBarWidget({
    Key key,
    @required this.tittle,
    @required this.backArrow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 48,
      backgroundColor: Colors.pink[300].withOpacity(0.9),
      leading: backArrow ? Icon(Icons.arrow_back_ios) : null,
      titleSpacing: 0,
      centerTitle: true,
      title: Text(
        tittle,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
