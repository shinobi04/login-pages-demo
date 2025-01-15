import 'package:flutter/material.dart';

class Inputforms2 extends StatelessWidget {
  final String blank;
  final bool pass;
  const Inputforms2({super.key, required this.blank, required this.pass});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, left: 40),
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(50),
        child: TextField(
          obscureText: pass,
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
