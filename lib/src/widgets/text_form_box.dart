import 'package:flutter/material.dart';

class TextFormBox extends StatelessWidget {
  final TextEditingController controller;
  final bool obscure;
  final String text;
  final double padding;
  final Color color;
  final double borderWidth;
  final double borderRadius;

  const TextFormBox(
      {Key key,
      this.controller,
      this.obscure = false,
      this.text,
      this.padding,
      this.color,
      this.borderWidth,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: TextFormField(
        controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(color: color),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color, width: borderWidth),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color, width: borderWidth),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        validator: (value) {
          if (value.isEmpty) {
            return text;
          }
          return null;
        },
      ),
    );
  }
}
