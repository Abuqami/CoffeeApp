import 'package:coffee/Landing_Page.dart';
import 'package:coffee/Order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  bool capp = true;
  bool coldBrew = false;
  bool expresso = false;
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(22),
            topLeft: Radius.circular(22),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.home,
                    color: Color(0xFF846046),
                    size: 14,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(color: Color(0xFFCBCBD4)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.heart,
                    size: 14,
                    color: Color(0xFFCBCBD4),
                  ),
                  Text(
                    'Favourite',
                    style: TextStyle(color: Color(0xFFCBCBD4)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.cartPlus,
                    size: 14,
                    color: Color(0xFFCBCBD4),
                  ),
                  Text(
                    'Cart',
                    style: TextStyle(color: Color(0xFFCBCBD4)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.person,
                    size: 14,
                    color: Color(0xFFCBCBD4),
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(color: Color(0xFFCBCBD4)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "images/person.png",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.1,
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.locationDot,
                            color: Color(0xFF846046),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Riyadh,KSA",
                            style: TextStyle(
                              fontFamily: 'Lato-Bold',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.3,
                      ),
                      FaIcon(FontAwesomeIcons.bell),
                    ],
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text(
                      "Good morning, Mohammed ☕",
                      style: TextStyle(
                          fontFamily: 'Lato-Bold',
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 303,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color(0xFFF8F7FA),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFCBCBD4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.search,
                              color: Colors.black,
                              size: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),

                            Container(
                              width: 100,
                              height: 35,
                              child: TextField(
                                style: TextStyle(fontSize: 18,fontFamily: 'Lato',),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  disabledBorder: InputBorder.none,
                                  filled: false,
                                  label: Text("Search Coffee...",style: TextStyle(fontSize: 18),),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.settings,size: 18,),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 225),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                          fontFamily: 'Latu',
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Coffee_Category(
                        categoryImage: 'Capp.png',
                        CategoryName: 'Cappuccino',
                        ImageColor:
                            capp == false ? Color(0xFF846046) : Colors.white,
                        containerColor:
                            capp == true ? Color(0xFF846046) : Colors.white,
                        textColor:
                            capp == false ? Color(0xFF846046) : Colors.white,
                        ontap: () {
                          setState(() {
                            if (coldBrew == true || expresso == true) {
                              coldBrew = false;
                              expresso = false;
                              capp = true;
                            }
                          });
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Coffee_Category(
                        categoryImage: 'coldbrew.png',
                        CategoryName: 'ColdBrew',
                        containerColor:
                            coldBrew == true ? Color(0xFF846046) : Colors.white,
                        textColor:
                            coldBrew == true ? Colors.white : Color(0xFF846046),
                        ImageColor:
                            coldBrew == true ? Colors.white : Color(0xFF846046),
                        ontap: () {
                          setState(
                            () {
                              //capp == true? capp=false:coldBrew=true;
                              if (capp == true || expresso == true) {
                                capp = false;
                                expresso = false;
                                coldBrew = true;
                              }
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Coffee_Category(
                        categoryImage: 'Espresso.png',
                        CategoryName: 'Cappuccino',
                        containerColor:
                            expresso == true ? Color(0xFF846046) : Colors.white,
                        textColor:
                            expresso == true ? Colors.white : Color(0xFF846046),
                        ImageColor:
                            expresso == true ? Colors.white : Color(0xFF846046),
                        ontap: () {
                          setState(() {
                            if (capp == true || coldBrew == true) {
                              capp = false;
                              coldBrew = false;
                              expresso = true;
                            }
                          });
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: SizedBox(
                      height: 190,
                      width: 350,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(bottom: 2),
                        children: [
                          CoffeeCard(
                            cardimagename: 'Cappuccino2',
                            orderdescription: 'With low fat milk',
                            rate: 4.54,
                            price: 23,
                          ),
                          CoffeeCard(
                            cardimagename: 'Cup',
                            orderdescription: 'With chocolate',
                            rate: 4.54,
                            price: 23,
                          ),
                          CoffeeCard(
                            cardimagename: 'Cup',
                            orderdescription: 'With low fat milk',
                            rate: 4.54,
                            price: 23,
                          ),
                          CoffeeCard(
                            cardimagename: 'Cup',
                            orderdescription: 'With low fat milk',
                            rate: 4.54,
                            price: 23,
                          ),
                          CoffeeCard(
                            cardimagename: 'Cup',
                            orderdescription: 'With low fat milk',
                            rate: 4.54,
                            price: 23,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 175),
                    child: Text(
                      "Special Offer 🔥",
                      style: TextStyle(
                          fontFamily: 'Latu',
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 303,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            // soften the shadow
                            spreadRadius: 0.1, //extend the shadow
                            offset: Offset(
                              0.1, // Move to right 5  horizontally
                              0.1, // Move to bottom 5 Vertically
                            ),
                          ),
                        ]),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/specialoffer.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 16,
                              width: 47,
                              decoration: BoxDecoration(
                                  color: Color(0xFF846046),
                                  borderRadius: BorderRadius.circular(22)),
                              child: Center(
                                child: Text(
                                  "Limited",
                                  style: TextStyle(
                                    fontFamily: 'lato',
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Buy 1 get 1 free\nif you pay with\nstc pay",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Lato-Bold',
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Coffee_Category extends StatelessWidget {
  Coffee_Category(
      {this.categoryImage,
      this.CategoryName,
      this.containerColor,
      this.textColor,
      this.ImageColor,
      this.ontap,
      this.IconColor});

  String? categoryImage;
  Color? containerColor;
  Color? textColor;
  String? CategoryName;
  Color? ImageColor;
  void Function()? ontap;
  Color? IconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 30,
        width: 99,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("images/$categoryImage"),
              width: 16,
              height: 16,
              color: ImageColor,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              "$CategoryName",
              style: TextStyle(
                  color: textColor,
                  fontFamily: 'Lato-Bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

class CoffeeCard extends StatelessWidget {
  CoffeeCard(
      {this.cardimagename, this.price, this.orderdescription, this.rate});

  String? cardimagename;
  int? price;
  String? orderdescription;
  double? rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 143,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              // soften the shadow
              spreadRadius: 0.1, //extend the shadow
              offset: Offset(
                0.1, // Move to right 5  horizontally
                0.1, // Move to bottom 5 Vertically
              ),
            ),
          ]),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () {
                Get.to(
                  order(),
                );
              },
              child: Container(
                height: 99,
                width: 129,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  image: DecorationImage(
                      image: AssetImage("images/$cardimagename.png"),
                      fit: BoxFit.fill),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 33,
                          height: 16,
                          decoration: BoxDecoration(
                            color: Color(0xFF846046),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Colors.white,
                                ),
                                Text(
                                  "$rate",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text(
                    "Cappuccino",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "$orderdescription",
                    style: TextStyle(fontSize: 13, fontFamily: 'Lato'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  "$price SR",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Color(0xFF846046),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
