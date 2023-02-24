import 'package:flutter/material.dart';
Color colour=Color(0xFF846046);
List<Widget> size = <Widget>[
  Container(
    width: 98,
    height: 37,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Color(0xFF846046),
    ),
    child: Center(
      child: Text(
        "Small",
        style: TextStyle(
            fontFamily: 'Lato-Regular',
            fontSize: 16,
            color: Colors.white),
      ),
    ),
  ),
  Container(
    width: 98,
    height: 37,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Color(0xFF846046),
    ),
    child: Center(
      child: Text(
        "Small",
        style: TextStyle(
            fontFamily: 'Lato-Regular',
            fontSize: 16,
            color: Colors.white),
      ),
    ),
  ),
  Container(
    width: 98,
    height: 37,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Color(0xFF846046),
    ),
    child: Center(
      child: Text(
        "Small",
        style: TextStyle(
            fontFamily: 'Lato-Regular',
            fontSize: 16,
            color: Colors.white),
      ),
    ),
  ),
];

class ToggoleButton extends StatefulWidget {
  const ToggoleButton({Key? key}) : super(key: key);

  @override
  State<ToggoleButton> createState() => _ToggoleButtonState();
}

class _ToggoleButtonState extends State<ToggoleButton> {
   List<bool> _selectedSize = <bool>[true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Coffee Size"),
            SizedBox(
              height: 5,
            ),
            ToggleButtons(
              children: size,
              isSelected: _selectedSize,
              selectedColor: Color(0xFF846046),
              disabledColor: Colors.black,
              borderColor: Colors.white,
              onPressed: (int index){
                setState((){
                  for(int i=0; i<_selectedSize.length;i++){
                    _selectedSize[i]=i==index;
                  }
                }
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
