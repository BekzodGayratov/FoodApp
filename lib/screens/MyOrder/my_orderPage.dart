import 'package:flutter/material.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  _MyOrderPageState createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  int _counter = 0;
  double _summ = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.64,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/MyOrders/pitsa.jpg"),
                        ),
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(90),
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 35.0),
                child: Column(
                  children: [
                    const Text(
                      "P",
                      style: TextStyle(
                          fontSize: 48.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "I",
                      style: TextStyle(
                          fontSize: 48.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "Z",
                      style: TextStyle(
                          fontSize: 48.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "Z",
                      style: TextStyle(
                          fontSize: 48.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "A",
                      style: TextStyle(
                          fontSize: 48.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      child: const CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.amber,
                        child: Icon(
                          Icons.add_shopping_cart_outlined,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/MyCartPage");
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
            child: Text(
              "Special Pan Pizza",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
                '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. it to make a type specimen book. It has survived'''),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 15.0),
            child: myListView(context),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      InkWell(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.035,
                          width: MediaQuery.of(context).size.width * 0.065,
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
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "$_counter",
                          style: const TextStyle(
                              fontSize: 26.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.035,
                          width: MediaQuery.of(context).size.width * 0.065,
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
                  const SizedBox(
                    width: 180.0,
                  ),
                  Text(
                    "\$ $_summ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox myListView(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.11,
      width: MediaQuery.of(context).size.width * 1.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
                margin: const EdgeInsets.only(left: 10.0),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.22,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text("Extra"),
                    index % 2 == 0
                        ? const Text("Cheese")
                        : const Text("Topping"),
                    const SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      child: CircleAvatar(
                          backgroundColor:
                              index % 2 == 0 ? Colors.black : Colors.amber,
                          radius: 12.0,
                          child: index % 2 == 0
                              ? const Icon(Icons.add)
                              : const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )),
                      onTap: () {},
                    ),
                  ],
                ));
          }),
    );
  }
}
