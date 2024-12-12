import 'package:flutter/material.dart';

class sliderContainer extends StatelessWidget {
  final String text;
  final String hight;

  const sliderContainer({
    super.key,
    required this.text,
    required this.hight,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Color(0xFF1F1E33),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  hight,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("cm",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold))
              ],
            ),
            Slider(
                value: 175,
                min: 120,
                max: 200,
                activeColor: Color(0xFFeb1555),
                inactiveColor: Color(0xFF525365),
                onChanged: (value) {})
          ],
        ),
      ),
    );
  }
}
