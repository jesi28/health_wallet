import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    super.key,

    required this.prefixImageURL,
    required this.hintText,
    this.suffixIcon,
  });

  final String prefixImageURL;
  final IconData? suffixIcon;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.emailAddress,
      validator:
          (value) => value == null || value.isEmpty ? "Enter Full name" : null,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Theme.of(context).colorScheme.surfaceContainerLow,
        hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(0.0), 
          child: Image.asset(
            prefixImageURL,
            width: 16,
            height: 21,
          ),
        ),
        suffixIcon: suffixIcon != null
    ? Icon(
        suffixIcon,
        color: Theme.of(context).colorScheme.outline, 
      )
    : null,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
      ),
      name: 'name',
    );
  }
}