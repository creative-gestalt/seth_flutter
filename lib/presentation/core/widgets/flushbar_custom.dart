import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Future FlushBarCustom(
    BuildContext context, Color leftIndicatorColor, Icon icon, String message) {
  return Flushbar(
          leftBarIndicatorColor: leftIndicatorColor,
          borderRadius: 5.0,
          duration: const Duration(milliseconds: 1500),
          icon: icon,
          flushbarStyle: FlushbarStyle.FLOATING,
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          message: message)
      .show(context);
}
