import 'package:flutter/material.dart';




class exper extends StatelessWidget {
  const exper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
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
    );
  }
}
