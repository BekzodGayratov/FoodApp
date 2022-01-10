import 'package:app/screens/ChangePassword/password_info.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final oldpass = TextEditingController();
  final newpass = TextEditingController();
  final confirmpass = TextEditingController();

  final passformKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 10),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                 Text(
                  "Change your password",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              
              ],
            ),
          ),
          Form(
            key: passformKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: oldpass,
                    decoration: const InputDecoration(hintText: "Old passwrod"),
                    validator: (v) {
                      if (v!.isEmpty) {
                        return "Bo'sha kiritish mumkin emas!";
                      }
                    },
                  ),
                  TextFormField(
                    controller: newpass,
                    decoration: const InputDecoration(hintText: "New password"),
                    validator: (v) {
                      if (v!.isEmpty) {
                        return "Bo'sha kiritish mumkin emas!";
                      }
                    },
                  ),
                  TextFormField(
                    controller: confirmpass,
                    decoration:
                        const InputDecoration(hintText: "Confirm password"),
                    validator: (v) {
                      if (v!.isEmpty) {
                        return "Bo'sha kiritish mumkin emas!";
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 300.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.065,
              width: MediaQuery.of(context).size.width * 0.95,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0))),
                  onPressed: () {
                    if (passformKey.currentState!.validate()) {
                      passwords.add(oldpass.text);
                      passwords.add(newpass.text);
                      passwords.add(confirmpass.text);
                      Navigator.pushNamed(context, "/MyOrderSumm");
                    }
                  },
                  child: const Text(
                    "SAVE",
                    style: TextStyle(fontSize: 20.0),
                  )),
            ),
          ),
        ],
      ),
    ));
  }
}
