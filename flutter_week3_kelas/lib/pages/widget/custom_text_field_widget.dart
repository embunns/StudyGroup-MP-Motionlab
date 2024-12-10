import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  CustomTextFieldWidget({super.key, this.hintText});
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      );
  }
}