import 'package:bmi_app/widgets/age_and_weight_container.dart';
import 'package:bmi_app/widgets/gender_container.dart';
import 'package:bmi_app/widgets/slider_container.dart';
import 'package:flutter/material.dart';
import 'package:bmi_app/widgets/customButton.dart';
import 'package:bmi_app/widgets/appBarWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B0C20),
      appBar: customAppBar(
        text: "bmi Calculater",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            //gender section
            Expanded(
              child: Row(
                children: [
                  genderContainer(text: "Male", icon: Icons.male_rounded),
                  SizedBox(width: 10),
                  genderContainer(text: "Femal", icon: Icons.female_rounded),
                ],
              ),
            ),

            //slider section
            Expanded(
              child: sliderContainer(
                text: "Hight",
                hight: "155",
              ),
            ),

            //age & weight container
            Expanded(
              child: Row(
                children: [
                  ageAndWeightContainer(text: "Age", value: 20),
                  SizedBox(width: 10),
                  ageAndWeightContainer(text: "Weight", value: 50)
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            customButton(
              text: "Calculate",
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
