import 'package:coffee/Home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  bool small = true;
  bool medium = false;
  bool large = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: <Widget>[
        Image.asset(
          "images/backgroundCoffee.png",
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () {
                Get.back(); //check why is it not working!!
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                ),
                child: Center(
                  child: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: Color(0xFF846046),
                    size: 18,
                  ),
                ),
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 75,
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                  ),
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cappuccino",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Lato-Bold',
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "With chocolate",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Lato',
                                fontSize: 16),
                          ),
                        ],
                      ),
                      Container(
                        width: 60,
                        height: 31,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xFF846046),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "4.9",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 450,
                width: 450,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
                  color: Color(0xFFF8F7FA),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 355,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27),
                        color: Color.fromRGBO(237, 238, 242, 0.9),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage("images/CoffeeBean.png"),
                            height: 25,
                            width: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Coffee"),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 1,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: Color(0xFF846046),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image(
                            image: AssetImage("images/chocolate.png"),
                            width: 25,
                            height: 25,
                          ),
                          Text("Chocolate"),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 1,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: Color(0xFF846046),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Medium Roasted"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Coffee Size",
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Lato-Bold',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CoffeeSize(
                          sizetype: 'Small',
                          ContainerColor:
                              small == true ? Color(0xFF846046) : Colors.white,
                          textColor:
                              small == true ? Colors.white : Color(0xFF846046),
                          ontap: () {
                            setState(() {
                              if (medium == true || large == true) {
                                small = true;
                                medium = false;
                                large = false;
                              }
                            });
                          },
                        ),
                        CoffeeSize(
                          sizetype: 'Medium',
                          ContainerColor:
                              medium == true ? Color(0xFF846046) : Colors.white,
                          textColor:
                              medium == true ? Colors.white : Color(0xFF846046),
                          ontap: () {
                            setState(() {
                              if (small == true || large == true) {
                                medium = true;
                                small = false;
                                large = false;
                              }
                            });
                          },
                        ),
                        CoffeeSize(
                          sizetype: 'Large',
                          ContainerColor:
                              large == true ? Color(0xFF846046) : Colors.white,
                          textColor:
                              large == true ? Colors.white : Color(0xFF846046),
                          ontap: () {
                            setState(() {
                              if (small == true || medium == true) {
                                large = true;
                                small = false;
                                medium = false;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "About",
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Lato-Bold',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id ipsum vivamus velit lorem amet. Tincidunt cras volutpat aliquam porttitor molestie. Netus neque, habitasse id vulputate proin cras. Neque, vel duis sit vel pellentesque tempor. A commodo arcu tortor arcu, elit. ",
                      style:
                          TextStyle(fontFamily: 'Lato-Regular', fontSize: 15),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Align(
                      child: Container(
                        width: 300,
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Color(0xFF846046),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Add to Cart",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              Text(
                                "|",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "25 SR",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class CoffeeSize extends StatelessWidget {
  CoffeeSize({this.ContainerColor, this.textColor, this.sizetype, this.ontap});

  Color? textColor;
  Color? ContainerColor;
  String? sizetype;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 98,
        height: 37,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: ContainerColor,
        ),
        child: Center(
          child: Text(
            "$sizetype",
            style: TextStyle(
                fontFamily: 'Lato-Regular', fontSize: 16, color: textColor),
          ),
        ),
      ),
    );
  }
}
