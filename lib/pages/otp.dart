import 'package:eduappp/pages/password.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
            child: Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: ListView(
        children: [
          const Image(image: AssetImage("assets/mobile.png")),
          Container(
              height: 390,
              decoration: const BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90),
                  )),
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        "Enter OTP send to your registered number",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    OtpForm(),
                  ]))),
        ],
      ),
    )));
  }
}

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2;
  late FocusNode pin3;
  late FocusNode pin4;

  @override
  void initState() {
    super.initState();
    pin2 = FocusNode();
    pin3 = FocusNode();
    pin4 = FocusNode();
  }

  @override
  void dispose() {
    pin2.dispose();
    pin3.dispose();
    pin4.dispose();
    super.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  void previousField(String value, FocusNode focusNode) {
    if (value.isEmpty) {
      focusNode.previousFocus();
    }
  }

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      key: _formkey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 60,
                  child: TextFormField(
                    autofocus: true,
                    maxLength: 1,
                    decoration: const InputDecoration(
                      counterText: "",
                      floatingLabelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Invalid";
                      }
                    },
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      nextField(value, pin2);
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 60,
                  child: TextFormField(
                    maxLength: 1,
                    focusNode: pin2,
                    autofocus: true,
                    decoration: const InputDecoration(
                      counterText: "",
                      floatingLabelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Invalid";
                      }
                    },
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      nextField(value, pin3);
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 60,
                  child: TextFormField(
                    autofocus: true,
                    focusNode: pin3,
                    maxLength: 1,
                    decoration: const InputDecoration(
                      counterText: "",
                      floatingLabelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Invalid";
                      }
                    },
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      nextField(value, pin4);
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 60,
                  child: TextFormField(
                    autofocus: true,
                    focusNode: pin4,
                    maxLength: 1,
                    decoration: const InputDecoration(
                      counterText: "",
                      floatingLabelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Invalid";
                      }
                    },
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      pin4.unfocus();
                    },
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 180),
              child: TextButton(
                  onPressed: () {},
                  child: const Text("Resend",
                      style: TextStyle(color: Colors.red))),
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Password()));
                    }
                  },
                  child: const Text("Next",
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            )
          ],
        ),
      ),
    );
  }
}
