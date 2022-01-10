import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              "Payment methods",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.11,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                    color: const Color(0xff000050),
                    borderRadius: BorderRadius.circular(12.0)),
                child: Column(
                  children: const [
                    SizedBox(
                      height: 8.0,
                    ),
                    Icon(
                      Icons.payment,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      "Card",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.11,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                    color: const Color(0xffF0EFE8),
                    borderRadius: BorderRadius.circular(12.0)),
                child: Column(
                  children: const [
                    SizedBox(
                      height: 8.0,
                    ),
                    Icon(
                      Icons.payments,
                      size: 30.0,
                    ),
                    Text("Cash")
                  ],
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
                left: 280.0, top: 30.0, bottom: 30.0, right: 10),
            child: Text(
              "Add new card",
              style: TextStyle(color: Colors.amber, fontSize: 16.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 1.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      offset: Offset(0, 0)),
                ],
              ),
              child: Row(
                children: [
                  const Text(
                    "VISA",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "423 *********** 123",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                        Text("Expires 07/23"),
                      ],
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
}
