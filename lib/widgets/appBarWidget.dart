import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const customAppBar({super.key,required this.text});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      backgroundColor: Color(0xFF0B0C20),
    );
  }
}
