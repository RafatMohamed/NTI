import 'package:flutter/material.dart';
import 'package:nti_proj/widget/task_bar.dart';
import 'package:nti_proj/widget/text_widget.dart';

class CategoryTask extends StatelessWidget {
  const CategoryTask({
    super.key,
    this.backgroundColorIcon = Colors.black,
    this.icon,
    required this.textDo,
    this.statuesText,
    this.backgroundColorStatuesText = Colors.green,
    required this.detailsTextDo,
    this.colorStatuesText = Colors.white,
  });
  final Color? backgroundColorIcon;
  final IconData? icon;
  final String textDo;
  final String? statuesText;
  final Color? colorStatuesText;

  final Color? backgroundColorStatuesText;
  final String detailsTextDo;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: backgroundColorIcon,
                      ),
                      child: Icon(
                        icon,
                        color: Color(0xffF3F5F4),
                      ),
                    ),
                    TextWidget(
                      text: textDo,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                TaskBar(
                  width: 90,
                  text: statuesText ?? "",
                  textColor: colorStatuesText,
                  backgroundColor: backgroundColorStatuesText,
                  height: 20,
                  borderColor: backgroundColorStatuesText,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget(
              text: detailsTextDo,
              color: Colors.black87,
            )
          ],
        ),
      ),
    );
  }
}
