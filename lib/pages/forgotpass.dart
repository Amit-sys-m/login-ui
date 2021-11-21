import 'package:eduappp/pages/otp.dart';
import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      child: Stack(children: [
        const Image(height: 280, image: AssetImage("assets/mobile.png")),
        const SizedBox(
          height: 20.0,
        ),
        Positioned(
          top: 270,
          child: Container(
            width: 370,
            height: 390,
            padding: const EdgeInsets.all(14),
            decoration: const BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(90))),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  const Text("Enter your Mobile Number",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    maxLength: 10,
                    decoration: const InputDecoration(
                        counterText: "",
                        border: OutlineInputBorder(),
                        hintText: "Mobile Number"),
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Cannot be Empty";
                      } else if (value.length < 10) {
                        return "Invalid";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OtpPage()));
                          }
                        },
                        child: const Text("Verify Number")),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
