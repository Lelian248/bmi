import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  final String text;
  final double hight;
  final Function() onPress;
  const customButton({super.key, required this.text, this.hight = 50,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: hight,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFED1654),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
