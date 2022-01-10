import 'package:flutter/material.dart';

class MyOrderSumm extends StatefulWidget {
  const MyOrderSumm({Key? key}) : super(key: key);

  @override
  _MyOrderSummState createState() => _MyOrderSummState();
}

class _MyOrderSummState extends State<MyOrderSumm> {
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
                icon: const Icon(Icons.arrow_back_ios)),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "My Orders",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20.0, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.025,
                  width: MediaQuery.of(context).size.width * 0.30,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: const Center(
                    child: Text(
                      "Ongoing",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Text(
                  "Delivered",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text("Cancelled",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.12,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 0))
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Order no: 123456",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("12 sep 2019"),
                        OutlinedButton(onPressed: () {}, child: Text("Details"))
                      ],
                    ),
                    const Text("08:09PM")
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
