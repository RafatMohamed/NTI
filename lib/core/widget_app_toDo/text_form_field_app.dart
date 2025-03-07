import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widget/icon_svg_widget.dart';
import '../resources/Colors/my_colors.dart';
import '../resources/Icons/my_icons.dart';


class TextFormFieldApp extends StatefulWidget {
  const TextFormFieldApp({
    super.key,
    this.iconSuffix = false,
    this.maxLine = 1,
    required this.labelText,
    this.labelFontWeight = FontWeight.normal,
    this.labelFontSize = 9,
    this.labelColor = MyColors.labelTextColor,
    this.labelFontFamily = "LexendDeca",
    this.labelFontStyle = FontStyle.normal,
    this.labelTextAlign = TextAlign.start,
    required this.hintText,
    this.hintFontWeight = FontWeight.w200,
    this.hintFontSize = 14,
    this.hintColor = MyColors.labelTextColor,
    this.hintFontFamily = "LexendDeca",
    this.hintFontStyle = FontStyle.normal,
    this.hintTextAlign = TextAlign.start,
    this.radius = 15,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.borderDecorationColor = MyColors.greenColor,
     this.validator,
    required this.onFieldSubmitted,
    this.focusNode,
    required this.controller,
  });

  final bool iconSuffix;
  final int maxLine;
  final Color borderDecorationColor;
  final String hintText;
  final FontWeight hintFontWeight;
  final double hintFontSize;
  final Color hintColor;
  final String? hintFontFamily;
  final FontStyle? hintFontStyle;
  final TextAlign? hintTextAlign;
  final String labelText;
  final FontWeight labelFontWeight;
  final double labelFontSize;
  final Color labelColor;
  final String? labelFontFamily;
  final FontStyle? labelFontStyle;
  final TextAlign? labelTextAlign;
  final double radius;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final FormFieldValidator? validator;
  final Function(String) onFieldSubmitted;
  final FocusNode? focusNode;
  final TextEditingController controller;

  @override
  State<TextFormFieldApp> createState() => _TextFormFieldAppState();
}

class _TextFormFieldAppState extends State<TextFormFieldApp> {
  bool _isFieldFilled = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() {
        _isFieldFilled = widget.controller.text.isNotEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Keep background white
        borderRadius: BorderRadius.circular(widget.radius),
        border: Border.all(
          color: _isFieldFilled ? widget.borderDecorationColor : Colors.transparent, // Change border color dynamically
          width: 2,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: double.infinity,
      child: TextFormField(
        focusNode: widget.focusNode,
        controller: widget.controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        enableSuggestions: true,
        validator: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          border: InputBorder.none, // Remove border from InputDecoration
          icon: widget.iconSuffix
              ? IConSvgWidget(
            radius: 5,
            width: 35,
            height: 35,
            colorContanier: MyColors.containerHomeColor,
            icon: SvgPicture.asset(
              width: 19,
              height: 19,
              MyIcons.iconHomeSvg,
              fit: BoxFit.none,
            ),
          )
              : null,
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: widget.labelColor,
            fontSize: widget.labelFontSize,
            fontFamily: widget.labelFontFamily,
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: widget.hintColor,
            fontSize: widget.hintFontSize,
            fontFamily: widget.hintFontFamily,
            fontWeight: widget.hintFontWeight,
          ),
        ),
        keyboardType: widget.keyboardType,
        maxLines: widget.maxLine,
        textInputAction: widget.textInputAction,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: widget.hintColor,
          fontSize: widget.hintFontSize,
          fontFamily: widget.hintFontFamily,
          fontWeight: widget.hintFontWeight,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
