import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:tcc/utils/constants.dart';

void showFlushbar(BuildContext context, String msgTitle, String msg) {
  // FlushbarHelper.createError(message: 'msg', title:'msgTitle', duration: Duration(seconds: 7))..show(context);
  Flushbar<bool>(
    flushbarPosition: FlushbarPosition.TOP,
    flushbarStyle: FlushbarStyle.FLOATING,
    margin: EdgeInsets.all(12),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
    backgroundColor: AppColors.accentColor.withOpacity(0.98),
    borderColor: AppColors.astronautCanvasColor,
    title: msgTitle,
    message: msg,
    // duration: Duration(seconds: 7),
  )..show(context);
}
