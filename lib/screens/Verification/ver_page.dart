import 'package:app/screens/Login/login_data.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Verification> {
  final formKey = GlobalKey<FormState>();
  bool mistake = false;
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
                    "Verification code",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 15),
                    child: Text('''OTP has been sent to ${phoneNumbers[0]}'''),
                  ),
                  mainListView(context),
                  Padding(
                    padding: const EdgeInsets.only(left: 220),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Stack(
                                    children: [
                                      AlertDialog(
                                        title: const Text(
                                            "Sizga yangi kod yuborildi "),
                                        content: listView(context,
                                            randomCodes: randomsTwo,
                                            widthsize: 0.078),
                                      ),
                                    ],
                                  );
                                });
                          });
                        },
                        child: const Text(
                          "Resend OTP? ",
                          style: TextStyle(fontSize: 12.0),
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.055,
                    width: MediaQuery.of(context).size.width * 0.68,
                    child: OutlinedButton(
                      onPressed: () {
                        yeah();
                       if(mistake == false){
                          Future.delayed(const Duration(seconds: 2)).then(
                            (value) =>
                                Navigator.pushNamed(context, '/LocationPage'));
                       }
                       else{
                          Future.delayed(const Duration(seconds: 2)).then(
                            (value) =>
                                Navigator.pushNamed(context, '/VerificationPage'));
                       }
                      },
                      child: const Text(
                        "VERIFY",
                        style: TextStyle(fontSize: 18.0, color: Colors.amber),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.amber, width: 2.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox listView(BuildContext context, {randomCodes, widthsize}) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.065,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 7),
            width: MediaQuery.of(context).size.width * widthsize,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text("${randomCodes[index]}"),
            ),
          );
        },
        itemCount: 6,
      ),
    );
  }

  SizedBox mainListView(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.065,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.height * 0.05,
              child: TextField(
                controller: controllers[index],
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: "${randoms[index]}"),
                onChanged: (v) {
                  setState(() {
                    controllers[index].text = v;
                  });
                },
              ),
            ),
          );
        },
        itemCount: randoms.length,
      ),
    );
  }

  yeah() {
    if (int.parse(controllers[0].text) == randoms[0] &&
        int.parse(controllers[1].text) == randoms[1] &&
        int.parse(controllers[2].text) == randoms[2] &&
        int.parse(controllers[3].text) == randoms[3] &&
        int.parse(controllers[4].text) == randoms[4] &&
        int.parse(controllers[5].text) == randoms[5]) {
      return showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text("Muvoffaqiyatli ro'yhatga olindingiz !"),
            );
          });
    } else {
      mistake = true;
      return showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text("Kodni kirishda xatolik !!!"),
            );
          });
    }
  }
}
