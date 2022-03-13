import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class GenerateStyles {
  ///Custom simple rounded input decoration style
  static InputDecoration getInputDecoration(String hint) {
    return InputDecoration(
      fillColor: Colors.white,
      filled: true,
      hintText: hint,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }

  ///Simple text form with shadow
  static Widget getTextForm(TextFormField form) {
    return SimpleShadow(
      sigma: 7,
      color: Colors.grey.withOpacity(0.5),
      offset: const Offset(0, 10),
      child: form,
    );
  }
}
