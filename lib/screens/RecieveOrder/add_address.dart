import 'package:app/screens/RecieveOrder/All_datas/dataBase.dart';
import 'package:flutter/material.dart';

class RecieveOrders extends StatefulWidget {
  const RecieveOrders({Key? key}) : super(key: key);

  @override
  _RecieveOrdersState createState() => _RecieveOrdersState();
}

class _RecieveOrdersState extends State<RecieveOrders> {
  final allkeyForm = GlobalKey<FormState>();
  final title = TextEditingController();
  final street = TextEditingController();
  final city = TextEditingController();
  final zipcode = TextEditingController();
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
                icon: Icon(Icons.arrow_back_ios)),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Add new address",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          Form(
            key: allkeyForm,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: title,
                    decoration: const InputDecoration(
                      hintText: "Title",
                    ),
                    validator: (v) {
                      allController[0]['title'] = v.toString();
                      if (v!.isEmpty) {
                        return "Bo'sh kiritish mumkin emas!!";
                      }
                    },
                  ),
                  TextFormField(
                    controller: street,
                    decoration: const InputDecoration(
                      hintText: "Street Address",
                    ),
                    validator: (v) {
                      allController[0]['street'] = v.toString();
                      if (v!.isEmpty) {
                        return "Bo'sh kiritish mumkin emas!!";
                      }
                    },
                  ),
                  TextFormField(
                    controller: city,
                    decoration: const InputDecoration(
                      hintText: "City ",
                    ),
                    validator: (v) {
                      allController[0]['city'] = v.toString();
                      if (v!.isEmpty) {
                        return "Bo'sh kiritish mumkin emas!!";
                      }
                    },
                  ),
                  TextFormField(
                    controller: zipcode,
                    decoration: const InputDecoration(
                      hintText: "Zipcode",
                    ),
                    validator: (v) {
                      allController[0]['zipcode'] = v.toString();
                      if (v!.isEmpty) {
                        return "Bo'sh kiritish mumkin emas!!";
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 380.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.065,
              width: MediaQuery.of(context).size.width * 0.95,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0))),
                  onPressed: () {
                    if (allkeyForm.currentState!.validate()) {
                      Navigator.pushNamed(context, "/Address");
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
