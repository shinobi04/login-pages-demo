import 'package:dumbproj/pages/input_form2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(140, 92, 179, 1),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              "Log In To XYZ!!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          FilledButton.icon(
            icon: SvgPicture.asset('lib/assets/images/google.svg'),
            onPressed: () {},
            label: Padding(
              padding: const EdgeInsets.only(top: 14, bottom: 14),
              child: const Text(
                "Log in With Google",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
            ),
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black),
                padding: WidgetStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(left: 47, right: 47, top: 5, bottom: 5))),
          ),
          Text(
            "⸻Or Log In With Email⸻",
            style: TextStyle(
                height: 5,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          Inputforms2(
            blank: 'UserName',
            pass: false,
          ),
          SizedBox(height: 20),
          Inputforms2(
            blank: 'Password',
            pass: true,
          ),
          SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 280),
            child: Text(
              textAlign: TextAlign.start,
              'Forgot?',
              style: TextStyle(fontSize: 16),
            ),
          ),
          FilledButton(
              style: ButtonStyle(
                  padding:
                      WidgetStateProperty.all<EdgeInsets>(EdgeInsets.all(13)),
                  backgroundColor: WidgetStatePropertyAll(Colors.white)),
              onPressed: () {},
              child: Text('Log In',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                      color: Colors.black))),
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 65),
                child: Image.asset(
                  'lib/assets/images/girl.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 120, top: 60),
                child: Column(
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    SizedBox(height: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/signupage');
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                    )
                  ],
                ),
              )
            ],
          )
        ]));
  }
}
