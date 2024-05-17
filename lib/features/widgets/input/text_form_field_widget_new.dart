import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldWidgetNew extends StatelessWidget {
  final TextEditingController? controller;
  final String? initialValue;
  final Color? textColor;
  final double? textFontSize;
  final TextAlign? textAlign;
  final Color? boxColor;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool readOnly;
  final String? hintText;
  final Color? hintTextColor;
  final String? labelText;
  final Color? labelTextColor;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;
  final Color? suffixIconColor;
  final Color? fillColor;

  const TextFormFieldWidgetNew({
    this.controller,
    this.initialValue,
    this.textColor,
    this.fillColor,
    this.textFontSize,
    this.textAlign,
    this.boxColor,
    this.onChanged,
    this.onEditingComplete,
    this.textInputAction,
    this.inputFormatters,
    this.keyboardType,
    this.obscureText = false,
    this.readOnly = false,
    this.hintText,
    this.hintTextColor,
    this.labelText,
    this.labelTextColor,
    this.validator,
    this.contentPadding,
    this.suffixIcon,
    this.suffixIconColor,
    super.key,
  });

  InputBorder border(Color color) {
    return UnderlineInputBorder(
      borderSide: BorderSide(color: color, width: 2),
      borderRadius: BorderRadius.circular(0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onEditingComplete: onEditingComplete,
      onChanged: onChanged,
      inputFormatters: inputFormatters,
      obscureText: obscureText,
      readOnly: readOnly,
      validator: validator,
      cursorColor: textColor ?? Colors.grey,
      style: TextStyle(
        color: textColor ?? Colors.grey,
        fontSize: textFontSize ?? 16,
      ),
      textAlign: textAlign ?? TextAlign.start,
      // ignore: deprecated_member_use
      toolbarOptions: const ToolbarOptions(
        copy: true,
        cut: true,
        paste: true,
        selectAll: true,
      ),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor,
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          color: Colors.transparent,
          fontSize: textFontSize ?? 16,
          fontWeight: FontWeight.w200,
        ),
        labelText: labelText,
        labelStyle: GoogleFonts.poppins(
          color: labelTextColor ?? Colors.grey,
          fontSize: textFontSize ?? 16,
          fontWeight: FontWeight.w300,
        ),
        filled: true,
        fillColor: fillColor ?? Colors.grey,
        contentPadding: contentPadding ?? EdgeInsets.all(16),
        enabledBorder: border(boxColor ?? Colors.transparent),
        errorStyle: TextStyle(color: Colors.grey),
        errorBorder: border(boxColor ?? Colors.transparent),
        errorMaxLines: 2,
        focusedBorder: border(boxColor ?? Colors.transparent),
        focusedErrorBorder: border(boxColor ?? Colors.transparent),
      ),
    );
  }
}
