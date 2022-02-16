import 'package:flutter/material.dart';

import 'colors.dart';

// ignore: must_be_immutable
class CustomEditText extends StatefulWidget {
  final String label;
  final String hint;
  bool hideInput;
  bool enable;
  bool showBorder;
  final TextInputType textInputType;
  final ValueChanged<String> onChanged;
  final String prefixText;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final TextEditingController textEditingController;
  int maxLength;
  final int maxLines;
  final String fontFamily;
  final String editFontFamily;
  final FontStyle fontStyle;
  final FontWeight fontWeight;
  final double labelSize;
  final double textSize;
  final double hintSize;
  final InputBorder focusBoarder;
  bool errorColor;
  bool centerLabel;
  final TextAlign textAlign;
  final Function(String text) validator;
  final TextStyle style;

  CustomEditText({
    required this.label,
    required this.hint,
    this.hideInput = false,
    this.enable = true,
    this.textInputType = TextInputType.text,
    required this.onChanged,
    required this.prefixText,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.textEditingController,
    required this.maxLength,
    this.maxLines = 1,
    required this.style,
    this.textAlign = TextAlign.left,
    required this.validator,
    required this.fontFamily,
    required this.editFontFamily,
    this.fontStyle = FontStyle.normal,
    this.fontWeight = FontWeight.normal,
    this.labelSize = 14,
    this.textSize = 16,
    this.hintSize = 14,
    required this.focusBoarder,
    this.errorColor = false,
    this.centerLabel = false,
    this.showBorder = true
  });

  @override
  _CustomEditTextState createState() => _CustomEditTextState();
}

class _CustomEditTextState extends State<CustomEditText> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              border: widget.showBorder? Border.all(color: ColorPath.BUTTON_GREY): null,
              color: widget.showBorder? Colors.transparent: ColorPath.BUTTON_GREY),
          height: 56.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: TextFormField(
              onChanged: widget.onChanged,
              maxLength: widget.maxLength,
              controller: widget.textEditingController,
              cursorColor: ColorPath.PRIMARY_BLUE,
              textAlign: TextAlign.left,
              style: widget.style,
              obscureText: widget.hideInput?_isHidden:widget.hideInput,
              enabled: widget.enable,
              textCapitalization: TextCapitalization.words,
        ),
          ))],
    );
  }
}