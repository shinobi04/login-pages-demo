import 'package:flutter/material.dart';

class Inputforms extends StatelessWidget {
  final String blank;
  const Inputforms({super.key, required this.blank});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, left: 40),
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(50),
        child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.only(left: 40),
              hintText: blank,
              hintStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
        ),
      ),
    );
  }
}
