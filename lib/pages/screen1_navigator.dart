import 'package:flutter/material.dart';
import 'package:nti_proj/pages/screen1_pop.dart';

import '../container_mode.dart';

class ScreenNavigator extends StatelessWidget {
  const ScreenNavigator({super.key,  this.contanierObj});
  final ContanierObj? contanierObj ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.cyan,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ScreenPop(contanierObj: ContanierObj(text: "ahmed", color: Colors.grey,age: 25),);
                },
              ),
            );
          },
          child: Text("Go To Task Page0",style: TextStyle(
            color: Colors.black,
            fontSize: 28
          ),),
        ),
      ),
    );
  }
}
