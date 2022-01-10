import 'package:app/screens/Login/login_data.dart';
import 'package:app/screens/SignUp/signUpData.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController controllerPhone = TextEditingController();
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
                    "LOGIN",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 20),
                    child: Text('''Enter your valid mobile number to 
                    continue '''),
                  ),
                  formMethodLogin(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.048,
                    width: MediaQuery.of(context).size.width * 0.77,
                    child: OutlinedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          phoneNumbers.add(controllerPhone.text);
                          Navigator.pushNamed(context, '/VerificationPage');
                        }
                      },
                      child: const Text(
                        "Send",
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(width: 2.0, color: Colors.amber),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Form formMethodLogin() {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15, right: 15, left: 15),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              child: TextFormField(
                controller: controllerPhone,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "123 456 789 0",
                    hintStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    )),
                validator: (v) {
                  phone = v;
                  if (v!.isEmpty) {
                    return "Bo'sh kiritish mumkin emas";
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
