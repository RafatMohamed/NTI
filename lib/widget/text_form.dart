import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../core/resources/Colors/my_colors.dart';
import '../core/resources/Icons/my_icons.dart';
import 'icon_svg_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class TaskTextForm extends StatelessWidget {
  const TaskTextForm(
      {super.key,
      this.iconSuffix = false,
      this.color = Colors.white,
      required this.labelText,
      this.maxLine = 1, required this.hintText,
        this.keyboardType=TextInputType.text,
       required this.onFieldSubmitted, this.controller,

      });
  final bool iconSuffix;
  final Color color;
  final String labelText;
  final String hintText;
  final int maxLine;
  final TextInputType keyboardType;
  final Function(String) onFieldSubmitted;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 20),
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: TextFormField(
        controller: controller,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          border: InputBorder.none,
         contentPadding: EdgeInsetsDirectional.only(top: 10,bottom: 10),
          icon: iconSuffix
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
          labelText: labelText,
          labelStyle: TextStyle(
            color: Color(0xff6E6A7C),
            fontSize: 18,
            fontFamily: "LexendDeca",
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: MyColors.textBlackColor,
            fontSize: 14,
            fontFamily: "LexendDeca",
            fontWeight: FontWeight.w200,
          ),
        ),
        keyboardType:keyboardType,
        maxLines: maxLine,
        textInputAction: TextInputAction.next,
        enableSuggestions: true,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: MyColors.textBlackColor,
          fontSize: 14,
          fontFamily: "LexendDeca",
          fontWeight: FontWeight.w200,
          letterSpacing: 1,
        ),
      ),
    );
  }
}

class TimeTextForm extends StatelessWidget {
  const TimeTextForm(
      {super.key,
      this.iconSuffix = false,
      this.color = Colors.white,
      required this.labelText,
      this.maxLine = 1});
  final bool? iconSuffix;
  final Color color;
  final String labelText;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: double.infinity,
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          // contentPadding: EdgeInsets.symmetric(vertical: 20),
          prefixIcon: iconSuffix!
              ? IConSvgWidget(
                  radius: 5,
                  colorContanier: Colors.transparent,
                  icon: SvgPicture.asset(
                    width: 20,
                    height: 20,
                    MyIcons.iconCalendar,
                    // color: Color(0xff149954),
                    fit: BoxFit.none,
                  ),
                )
              : null,
          labelText: labelText,
          labelStyle: TextStyle(
            color: Color(0xff6E6A7C),
            fontSize: 18,
            fontFamily: "LexendDeca",
          ),
          hintText: "01 May, 2022 \t  10:00 am",
          hintStyle: TextStyle(
            color: MyColors.textBlackColor,
            fontSize: 14,
            fontFamily: "LexendDeca",
            fontWeight: FontWeight.w200,
          ),
        ),
        keyboardType: TextInputType.datetime,
        textInputAction: TextInputAction.done,
        enableSuggestions: true,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: MyColors.textBlackColor,
          fontSize: 14,
          fontFamily: "LexendDeca",
          fontWeight: FontWeight.w200,
          letterSpacing: 1,
          wordSpacing: 2,
        ),
      ),
    );
  }
}

class TimeTextFormSt extends StatefulWidget {
  const TimeTextFormSt({
    super.key,
    this.iconSuffix = false,
    this.color = Colors.white,
    required this.labelText,
    this.maxLine = 1,
  });

  final bool iconSuffix;
  final Color color;
  final String labelText;
  final int maxLine;

  @override
  State<TimeTextFormSt> createState() => _TimeTextFormStState();
}

class _TimeTextFormStState extends State<TimeTextFormSt> {

  final TextEditingController _dateTimeController = TextEditingController();

  // Optional: store the selected DateTime
  DateTime? _selectedDateTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(15),
      ),
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: double.infinity,
      child: TextFormField(
        controller: _dateTimeController,
        readOnly: true, // Prevent the keyboard from popping up
        maxLines: widget.maxLine,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: widget.iconSuffix
              ? IConSvgWidget(
                  radius: 5,
                  colorContanier: Colors.transparent,
                  icon: SvgPicture.asset(
                    MyIcons.iconCalendar,
                    width: 20,
                    height: 20,
                    // color: const Color(0xff149954),
                    fit: BoxFit.none,
                  ),
                )
              : null,
          labelText: widget.labelText,
          labelStyle: const TextStyle(
            color: Color(0xff6E6A7C),
            fontSize: 18,
            fontFamily: "LexendDeca",
          ),
          hintText: "01 May, 2022   10:00 am",
          hintStyle: TextStyle(
            color: MyColors.textBlackColor,
            fontSize: 14,
            fontFamily: "LexendDeca",
            fontWeight: FontWeight.w200,
          ),
        ),
        style: TextStyle(
          color: MyColors.textBlackColor,
          fontSize: 14,
          fontFamily: "LexendDeca",
          fontWeight: FontWeight.w200,
          letterSpacing: 1,
          wordSpacing: 2,
        ),
        onTap: () async {
          // 1. Show the Date Picker
          final DateTime? pickedDate =
          await showDatePicker(
            context: context,
            initialDate: _selectedDateTime ?? DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
          );

          if (pickedDate == null) return ; // User canceled

          // 2. Show the Time Picker
          final TimeOfDay? pickedTime = await showTimePicker(
            // ignore: use_build_context_synchronously
            initialTime: TimeOfDay.now(), context: context,
            // context: context,
          );

          if (pickedTime == null) return; // User canceled

          // 3. Combine date and time into a single DateTime
          final combinedDateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );

          // 4. Format the DateTime (e.g. "01 May, 2022  10:00 am")
          final formattedDateTime =
              DateFormat("dd MMM, yyyy  hh:mm a").format(combinedDateTime);

          // 5. Update the text field and state
          setState(() {
            _selectedDateTime = combinedDateTime;
            _dateTimeController.text = formattedDateTime;
          });
        },
      ),
    );
  }
}
