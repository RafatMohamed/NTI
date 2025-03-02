import 'package:flutter/material.dart';

import '../container_mode.dart';

class ScreenPop extends StatelessWidget {
  const ScreenPop({super.key,required this.contanierObj});
  final ContanierObj contanierObj ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        leading: IconButton(onPressed: (){
          return Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_sharp),color: Colors.black,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Text(contanierObj.text),
            Text("${contanierObj.color}"),
            Text("${contanierObj.age}"),
          ],
        )
      ),
    );
  }
}
