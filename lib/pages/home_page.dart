import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromRGBO(140, 92, 179, 1)),
      body: Column(
        children: [
          //introtext
          Container(
            height: 200,
            child: Column(
              children: [
                Text(
                  "Welcome to XYZ!",
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  "dsfhj gjhf djg fdshjkg dsjj kfd",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
          ),
          //clouds
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'lib/assets/images/clouds.png',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              FilledButton(
                  style: ButtonStyle(
                      padding: WidgetStateProperty.all<EdgeInsets>(
                          EdgeInsets.only(
                              left: 25, right: 25, top: 15, bottom: 15)),
                      backgroundColor: WidgetStatePropertyAll(Colors.black)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signupage');
                  },
                  child: Text('Sign Up',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white))),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/loginpage');
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          //girl
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'lib/assets/images/girl2.png',
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
