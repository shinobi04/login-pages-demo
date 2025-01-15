import 'package:dumbproj/pages/input_blacnk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(140, 92, 179, 1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              "Sign Up To XYZ!!",
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
                "Sign Up With Google",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
            ),
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black),
                padding: WidgetStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(left: 47, right: 47, top: 5, bottom: 5))),
          ),
          Text(
            "⸻Or Continue With Email⸻",
            style: TextStyle(
                height: 5,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          Inputforms(
            blank: "Enter Your Name",
          ),
          SizedBox(
            height: 25,
          ),
          Inputforms(
            blank: "Enter Your UserName",
          ),
          SizedBox(
            height: 25,
          ),
          Inputforms(blank: "Enter Email"),
          SizedBox(
            height: 25,
          ),
          //Inputforms(blank: "Enter Password"),
          Padding(
            padding: const EdgeInsets.only(right: 40, left: 40),
            child: Material(
              elevation: 20,
              borderRadius: BorderRadius.circular(50),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.only(left: 40),
                    hintText: "Enter Password",
                    hintStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38, right: 25),
            child: Row(
              children: [
                Checkbox(
                    checkColor: Colors.black,
                    fillColor: WidgetStatePropertyAll(Colors.white),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                Flexible(
                    child: Text(
                  "I agree with Terms of Service and Privacy Policy",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Image.asset(
                'lib/assets/images/boy.png',
                width: 268,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 140, top: 27),
                child: Column(
                  children: [
                    FilledButton(
                        style: ButtonStyle(
                            padding: WidgetStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(13)),
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.black)),
                        onPressed: () {},
                        child: Text('Create Account',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                                color: Colors.white))),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Text(
                        "Alreay have a account?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/loginpage');
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 120,
                      width: double.infinity,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
