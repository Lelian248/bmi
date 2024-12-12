import 'package:flutter/material.dart';

class ageAndWeightContainer extends StatefulWidget {
  final String text;
  final int value;
  const ageAndWeightContainer({
    super.key,
    required this.text,
    required this.value,
  });

  @override
  State<ageAndWeightContainer> createState() =>
      _ageAndWeightContainerState(myStateValue: value);
}

class _ageAndWeightContainerState extends State<ageAndWeightContainer> {
  int myStateValue;
  _ageAndWeightContainerState({required this.myStateValue});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF1F1E33),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.text,
                style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(
              height: 3,
            ),
            Text(widget.value.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton.filled(
                  onPressed: () {
                    setState(() {
                      myStateValue--;

                      print(myStateValue);
                      print(widget.value);
                    });
                  },
                  icon: Icon(Icons.remove),
                  style:
                      IconButton.styleFrom(backgroundColor: Color(0xFF4b4e5d)),
                ),
                IconButton.filled(
                  onPressed: () {
                    setState(() {
                      myStateValue = myStateValue++;
                      print(myStateValue);
                      print(widget.value);
                    });
                  },
                  icon: Icon(Icons.add),
                  style:
                      IconButton.styleFrom(backgroundColor: Color(0xFF4b4e5d)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
