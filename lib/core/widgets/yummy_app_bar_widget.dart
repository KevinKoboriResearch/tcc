import 'package:flutter/material.dart';
import 'package:tcc/core/utils/consts.dart';

class YummyAppBarWidget extends StatelessWidget {
  final String tittle;
  final bool backArrow;
  final List<Widget> actions;
  const YummyAppBarWidget({
    Key key,
    @required this.tittle,
    this.backArrow = false,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 48,
      backgroundColor: AppColors.azulClaro.withOpacity(0.9),
      leading: backArrow ? Icon(Icons.arrow_back_ios) : null,
      actions: actions,
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
