import 'package:flutter/material.dart';
import 'package:kheloo/features/utils/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final String? hintText;

  const TextFormFieldWidget({
    super.key,
    required this.controller,
    this.validator,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: controller,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: colorPrimary,
            )),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: colorPrimary,
            )),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: colorPrimary,
            )),
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintText ?? '',
      ),
      validator: validator,
    );
  }
}
