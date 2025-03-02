import 'package:flutter/material.dart';

class DefaultContanier extends StatelessWidget {
  final Function() onTap;

  const DefaultContanier({
    super.key,
    required this.color,
    required this.data, required this.onTap,
  });
  final Color color;
  final String data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: color,
          boxShadow: [
            BoxShadow(
              offset: Offset(10, 5),
              color: Colors.yellow,
            ),
            BoxShadow(
              offset: Offset(-10, -5),
              color: Colors.purple,
            ),
          ]
        ),
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 100,
        child: Center(
            child: Text(data,
          style: TextStyle(
            fontSize: 24,
            color: color == Colors.black ? Colors.white : Colors.black,
          ),
        )),
      ),
    );
  }
}
class DefaultContanierHor extends StatelessWidget {
 final Function() onTap;
  const DefaultContanierHor({
    super.key,
    required this.color,
    required this.data,
    required this.onTap,
  });
  final Color color;
  final String data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onDoubleTap:onTap,
      child: Container(
        decoration: BoxDecoration(
            color: color,
            boxShadow: [
              BoxShadow(
                offset: Offset(10, 5),
                color: Colors.yellow,
              ),
              BoxShadow(
                offset: Offset(-10, -5),
                color: Colors.purple,
              )
            ]
        ),
        width: 100,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
            child: Text(data,
              style: TextStyle(
                fontSize: 24,
                color: color == Colors.black ? Colors.white : Colors.black,
              ),
            )),
      ),
    );
  }
}