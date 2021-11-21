import 'package:eduappp/pages/register.dart';
import 'package:eduappp/pages/sigin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Image(
                  image: AssetImage("assets/aws-removebg-preview.png"),
                  fit: BoxFit.fitWidth,
                )),
            const SizedBox(
              height: 20.0,
            ),
            const Text("Welcome ",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            const SizedBox(
              height: 10.0,
            ),
            const Center(
              child: Text("Altu jallatu aai bala ko taaltu ",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
            const SizedBox(
              height: 30.0,
            ),
            AnimatedContainer(
                duration: const Duration(seconds: 20),
                curve: Curves.ease,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
                    },
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already a Member?",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SigninPage()));
                    },
                    child: const Text("Sign In",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold)))
              ],
            ),
          ]),
        ),
      ]),
    );
  }
}
