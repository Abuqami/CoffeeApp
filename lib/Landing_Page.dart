import 'package:coffee/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Landing_Page extends StatelessWidget {
  const Landing_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/CAF.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Good coffee \n Good friends, \n let it blends",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: 'Lato'),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "The best grain, the finest roast, \n the most powerful flavor.",
                    style: TextStyle(
                        fontFamily: 'Lato',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: 40,
                        color: Color(0xFF846046),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        Home(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    child: Container(
                      height: 64,
                      width: 286,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34),
                        color: Color(0xFF846046),
                      ),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Color(0xFFF8F7FA),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),),
              SizedBox(height: 70,),
            ],
          ),
        ),
      ),
    );
  }
}
