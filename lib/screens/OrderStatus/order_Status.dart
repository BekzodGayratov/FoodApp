import 'package:flutter/material.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({Key? key}) : super(key: key);

  @override
  _OrderStatusState createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 10, right: 350.0),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios)),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0, bottom: 10.0, right: 240.0),
            child: Text(
              "Order status",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Column(
                  children: const [
                    Text(
                      "Ordered",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Text("06:24"),
                    Padding(
                      padding: EdgeInsets.only(top: 40.0, bottom: 40.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.greenAccent,
                        child: Icon(Icons.check, color: Colors.green),
                      ),
                    ),
                    Text(
                      "Cooked",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Text("06:24"),
                    Padding(
                      padding: EdgeInsets.only(top: 40.0, bottom: 40.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.yellowAccent,
                        child: Icon(Icons.delivery_dining, color: Colors.amber),
                      ),
                    ),
                    Text(
                      "Recieved",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Text("06:24"),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 60.0, right: 20.0, top: 20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width * 0.02,
                  color: Colors.amber,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 40.0, bottom: 40.0),
                      child: CircleAvatar(
                        backgroundColor: Color(0xffF5BDBD),
                        child: Icon(Icons.card_travel, color: Colors.redAccent),
                      ),
                    ),
                    Text(
                      "Confirmed",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Text("06:24"),
                    Padding(
                      padding: EdgeInsets.only(top: 40.0, bottom: 40.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.cyanAccent,
                        child: Icon(Icons.dining_sharp, color: Colors.blue),
                      ),
                    ),
                    Text(
                      "Delivered",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Text("06:24"),
                    Padding(
                      padding: EdgeInsets.only(top: 40.0, bottom: 40.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.fastfood, color: Colors.blueGrey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Order will arrive in approx 5 mins",
                ),
                const SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.065,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.amber,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0))),
                      onPressed: () {
                        Navigator.pushNamed(context, "/RecieveOrders");
                      },
                      child: const Text(
                        "Confirm order recieved",
                        style: TextStyle(fontSize: 20.0),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
