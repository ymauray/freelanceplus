import 'package:flutter/material.dart';

class FormFieldDecoration extends InputDecoration {
  const FormFieldDecoration({
    required super.hintText,
    super.suffixIcon,
    super.suffix,
  }) : super(
          floatingLabelBehavior: FloatingLabelBehavior.never,
        );
}
