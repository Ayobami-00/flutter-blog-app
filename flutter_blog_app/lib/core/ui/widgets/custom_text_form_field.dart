import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_blog_app/core/ui/themes/flutter_bloc_app_theme.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    this.autofocus = false,
    this.readOnly = false,
    this.onChanged,
    this.initialValue,
    this.label,
    this.hintText,
    this.keyboardType,
    this.obscureText,
    this.controller,
    this.validator,
    this.height,
    this.hintColor,
    this.borderWidth,
    this.onTap,
    this.onSaved,
    this.focusNode,
    this.textInputAction,
    this.onFieldSubmitted,
    this.suffixIcon,
    this.prefixIcon,
    this.iconData,
    this.inputFormatters,
  });

  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final Color hintColor;
  final TextEditingController controller;
  final double borderWidth;
  final double height;
  final String Function(String) validator;
  final Function(String) onSaved;
  final Function() onTap;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final Function(String) onFieldSubmitted;
  final Widget suffixIcon;
  final Widget prefixIcon;
  final String label;
  final String initialValue;
  final Function(String) onChanged;
  final bool readOnly;
  final bool autofocus;
  final IconData iconData;
  final List<TextInputFormatter> inputFormatters;

  @override
  Widget build(BuildContext context) {
    final TextFormField textFormField = TextFormField(
      readOnly: readOnly,
      autovalidate: true,
      onChanged: onChanged,
      initialValue: initialValue,
      controller: controller != null ? controller : null,
      focusNode: focusNode,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      autofocus: autofocus,
      style: flutterBlogAppAppTheme().textTheme.bodyText1,
      validator: validator,
      inputFormatters: inputFormatters ?? [],
      onSaved: onSaved,
      onTap: onTap,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: label,
        suffixIcon: suffixIcon,
        hintStyle: flutterBlogAppAppTheme().textTheme.bodyText1,
        prefixIcon: Icon(
          iconData,
          color: flutterBlogAppAppTheme().accentColor,
        ),
      ),
      keyboardType: keyboardType != null ? keyboardType : null,
      obscureText: obscureText != null ? obscureText : false,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: textFormField,
    );
  }
}
