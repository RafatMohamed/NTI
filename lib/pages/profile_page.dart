import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_proj/widget/text_widget.dart';
import '../core/resources/Colors/my_colors.dart';
import '../core/resources/Icons/my_icons.dart';
import '../core/resources/images/my_images.dart';
import '../widget/icon_svg_widget.dart';
List <int> item=List.generate(4, (index) {
  return index;
},);
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundScaffoldColor,
      body:
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              MyImages.imageFlagpalestine,
              height: 277,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(55),
                      topEnd: Radius.circular(55),
                    )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                    spacing: 16,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 21),
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: MyColors.backgroundScaffoldColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 12,
                              children: [
                                Icon(
                                  Icons.person_4_outlined,
                                  size: 21,
                                ),
                                TextWidget(
                                  text: "Update Profile",
                                  fontFamily: "LexendDeca",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                            IConSvgWidget(
                              width: 24,
                              height: 24,
                              colorContanier: Colors.transparent,
                              icon: IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  alignment: AlignmentDirectional.center,
                                  height: 15,
                                  width: 20,
                                  MyIcons.iconVector,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 21),
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: MyColors.backgroundScaffoldColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 12,
                              children: [
                                Icon(
                                  Icons.history_outlined,
                                  size: 21,
                                ),
                                TextWidget(
                                  text: "History",
                                  fontFamily: "LexendDeca",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                            IConSvgWidget(
                              width: 24,
                              height: 24,
                              colorContanier: Colors.transparent,
                              icon: IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  alignment: AlignmentDirectional.center,
                                  height: 15,
                                  width: 20,
                                  MyIcons.iconVector,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: MyColors.backgroundScaffoldColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 65,
                        child: Center(
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              hintText: "Select an Option",
                              hintStyle: TextStyle(
                                fontFamily: "LexendDeca",
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                                 color: Colors.black
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: "LexendDeca",
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ),
                            borderRadius: BorderRadius.circular(15),
                            alignment: AlignmentDirectional.center,
                            dropdownColor: MyColors.backgroundScaffoldColor,
                            items: item.map((index) {
                              return DropdownMenuItem(
                                value: index,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child:
                                          Image.asset(MyImages.imageFlagpalestine,width: 40,height: 40,fit: BoxFit.cover,),
                                        ),
                                        SizedBox(width: 15,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            TextWidget(
                                              text: "Hello!",
                                              fontFamily: "LexendDeca",
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                            ),
                                            SizedBox(height: 5,),
                                            TextWidget(
                                              text: "Option $index",
                                              fontFamily: "LexendDeca",
                                              fontWeight: FontWeight.w300,
                                              fontSize: 16,
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ],
                                ) ,
                              );
                            },).toList(),
                              onChanged:(value) {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
