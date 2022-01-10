import 'package:app/screens/Shopping/shopping_data.dart';
import 'package:flutter/material.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({Key? key}) : super(key: key);
  @override
  _MyCartPageState createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  int _counter = 0;
  double _summ = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 10),
            child: Row(
              children: [
                InkWell(
                  child: const Icon(Icons.arrow_back_ios),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(
                  width: 320.0,
                ),
                const Icon(
                  Icons.search,
                  size: 28.0,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0, top: 5.0),
            child: Text(
              "MY CART",
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            width: MediaQuery.of(context).size.width * 1.0,
            child: ListView.builder(itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 60, top: 10.0, right: 8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(0, 0))
                          ]),
                      child: Column(
                        children: [
                          const Text(
                            "Special Pan Pizza",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 80.0, top: 20.0),
                            child: Row(
                              children: [
                                InkWell(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.035,
                                    width: MediaQuery.of(context).size.width *
                                        0.065,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(Icons.remove),
                                  ),
                                  onTap: () {
                                    if (_counter > 0) {
                                      setState(() {
                                        _counter -= 1;
                                        _summ -= 5.25;
                                      });
                                    }
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Text(
                                    "$_counter",
                                    style: const TextStyle(
                                        fontSize: 26.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                InkWell(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.035,
                                    width: MediaQuery.of(context).size.width *
                                        0.065,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(Icons.add),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      _counter += 1;
                                      _summ += 5.25;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 100.0, top: 15.0),
                            child: Text(
                              "\$ $_summ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.03,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.amber,
                            style: BorderStyle.solid,
                            width: 2.0),
                        color: Colors.blue,
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/MenuMainPage/pitsa.jpeg"),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
          const Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 330.0),
            child: Text(
              "Total",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300.0),
            child: Text(
              "\$ $_summ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/MyOrdersPage");
                },
                child: const Text("Place order"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
