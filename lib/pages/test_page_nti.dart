import 'dart:developer';

import 'package:flutter/material.dart';

import '../container_mode.dart';
import '../core/resources/images/my_images.dart';
import '../widget/default_contanier.dart';

List<ContanierObj> list = [
  ContanierObj(text: "EG", color: Colors.black),
  ContanierObj(text: "EN", color: Colors.red),
  ContanierObj(text: "USA", color: Colors.cyan),
  ContanierObj(text: "UAE", color: Colors.black),
  ContanierObj(text: "GR", color: Colors.red),
  ContanierObj(text: "BAR", color: Colors.cyan),
  ContanierObj(text: "INDIA", color: Colors.black),
  ContanierObj(text: "MAR", color: Colors.red),
  ContanierObj(text: "MASOURA", color: Colors.cyan),
  ContanierObj(text: "ABOWDAWOOD", color: Colors.black),
];

class TestPageNti extends StatelessWidget {
  const TestPageNti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return list.map((e) {
                            return DefaultContanierHor(
                              color: e.color,
                              data: e.text,
                              onTap: () {
                                log("this Scroll in Horzintal");
                              },
                            );
                          }).toList()[index];
                        },
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return Center(
                          child: Image.asset(
                            MyImages.imageFlagpalestine,
                            height: 80,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        );
                      },
                      itemBuilder: (context, index) {
                        return list.map((e) {
                          return DefaultContanier(
                            color: e.color,
                            data: e.text,
                            onTap: () {
                              log("this Scroll in Vertical");
                            },
                          );
                        }).toList()[index];
                      },
                      itemCount: 10,
                      scrollDirection: Axis.vertical,
                    ),
                  ]),
            ),
            Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: CircularProgressIndicator(
                  color: Colors.cyan,
                  backgroundColor: Colors.white,
                ))),
          ],
        ),
      ),
    );
  }
}
// Stack(
// alignment: AlignmentDirectional.bottomCenter,
// children: [
// SingleChildScrollView(
// physics: BouncingScrollPhysics(),
// child: Column(
// spacing: 10,
// children: [
// DefaultContanier(color: Colors.green),
// DefaultContanier(color: Colors.grey),
// DefaultContanier(color: Colors.red),
// DefaultContanier(color: Colors.black),
// DefaultContanier(color: Colors.greenAccent),
// DefaultContanier(color: Colors.yellow),
// DefaultContanier(color: Colors.cyanAccent),
// DefaultContanier(color: Colors.limeAccent),
// DefaultContanier(color: Colors.pink),
// DefaultContanier(color: Colors.deepOrangeAccent),
// DefaultContanier(color: Colors.brown),
// DefaultContanier(color: Colors.grey),
// DefaultContanier(color: Colors.deepPurpleAccent),
// DefaultContanier(color: Colors.purple),
// DefaultContanier(color: Colors.green),
// DefaultContanier(color: Colors.red),
//
// ],
// ),
// ),
// Container(
// margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
// decoration: BoxDecoration(
// color: Colors.transparent,
// borderRadius: BorderRadius.circular(20)
// ),
// height: 80,
// width: double.infinity,
// child: Center(
// child: CircularProgressIndicator(
// strokeAlign: 5,
// color: Colors.cyan,
// backgroundColor: Colors.white,
// padding: EdgeInsets.symmetric(vertical: 20),
// ),
// ),
// ),
// ],
// ),
