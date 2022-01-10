import 'package:flutter/material.dart';
import './signUpData.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController controllerPhone = TextEditingController();
  TextEditingController controllerFacebook = TextEditingController();
  TextEditingController controllerGoogle = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/login.jpg')),
            ),
          ),
          Positioned(
            top: 400,
            left: 30,
            right: 30,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 30),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber),
                          color: Colors.transparent,
                          shape: BoxShape.circle),
                      child: const Icon(
                        Icons.person_outline_outlined,
                        color: Colors.amber,
                        size: 40,
                      ),
                    ),
                  ),
                  const Text(
                    "WELCOME TO FOODZIM",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  formMethod(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Form formMethod() {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 45,
              child: TextFormField(
                controller: controllerPhone,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "Phone number",
                    suffixIcon: InkWell(
                      onTap: () {
                        if (controllerPhone.text.isNotEmpty) {
                          info[0]['phone'] == controllerPhone.text;
                          Navigator.pushNamed(context, '/LoginPage');
                        } else if (controllerGoogle.text.isEmpty &&
                            controllerGoogle.text.isEmpty &&
                            controllerGoogle.text.isEmpty) {
                          if (formKey.currentState!.validate()) {}
                        }
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(Icons.phone),
                      ),
                    ),
                    disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0))),
                validator: (v) {
                  phone = v;
                  if (v!.isEmpty) {
                    return "Bo'sh kiritish mumkin emas";
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: SizedBox(
                height: 45,
                child: TextFormField(
                  controller: controllerFacebook,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Facebook",
                      suffixIcon: InkWell(
                        onTap: () {
                          if (controllerFacebook.text.isNotEmpty) {
                            info[1]['facebook'] == controllerFacebook.text;
                            Navigator.pushNamed(context, '/LoginPage');
                          } else if (controllerGoogle.text.isEmpty &&
                              controllerGoogle.text.isEmpty &&
                              controllerGoogle.text.isEmpty) {
                            if (formKey.currentState!.validate()) {}
                          }
                        },
                        child: const CircleAvatar(
                          child: Icon(Icons.facebook),
                        ),
                      ),
                      disabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0))),
                  validator: (v) {
                    facebook = v;
                    if (v!.isEmpty) {
                      return "Bo'sh kritish mumkin emas";
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 45,
              child: TextFormField(
                controller: controllerGoogle,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "Google",
                    suffixIcon: InkWell(
                      onTap: () {
                        if (controllerGoogle.text.isNotEmpty) {
                          info[2]['google'] == controllerGoogle.text;
                          Navigator.pushNamed(context, '/LoginPage');
                        } else if (controllerGoogle.text.isEmpty &&
                            controllerGoogle.text.isEmpty &&
                            controllerGoogle.text.isEmpty) {
                          if (formKey.currentState!.validate()) {}
                        }
                      },
                      child: const CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Text(
                            "G",
                            style: TextStyle(fontSize: 24),
                          )),
                    ),
                    disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0))),
                validator: (v) {
                  google = v;
                  if (v!.isEmpty) {
                    return "Bo'sh kritish mumkin emas";
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
