import 'package:flutter/material.dart';

class FinalOrderPage extends StatefulWidget {
  const FinalOrderPage({Key? key}) : super(key: key);

  @override
  _FinalOrderPageState createState() => _FinalOrderPageState();
}

class _FinalOrderPageState extends State<FinalOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Opacity(
                opacity: 0.1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/Menu_profile/girl.jpeg"))),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 90.0, left: 10.0, right: 20.0),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: MediaQuery.of(context).size.width * 0.28,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                                offset: Offset(0, 0))
                          ]),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.payment,
                            color: Colors.amber,
                            size: 44.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25.0, top: 5.0),
                            child: Text("Payment methods"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: MediaQuery.of(context).size.width * 0.28,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                                offset: Offset(0, 0))
                          ]),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.location_pin,
                            color: Colors.amber,
                            size: 44.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0, top: 5.0),
                            child: Text("All Address"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: MediaQuery.of(context).size.width * 0.28,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                                offset: Offset(0, 0))
                          ]),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.mail,
                            color: Colors.amber,
                            size: 44.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 32.0, top: 5.0),
                            child: Text("General  Details"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: MediaQuery.of(context).size.width * 0.28,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                                offset: Offset(0, 0))
                          ]),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.settings,
                            color: Colors.amber,
                            size: 44.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 5.0),
                            child: Text("Settings"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: MediaQuery.of(context).size.width * 0.28,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                                offset: Offset(0, 0))
                          ]),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.headphones,
                            color: Colors.amber,
                            size: 44.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.0, top: 5.0),
                            child: Text("Support"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: MediaQuery.of(context).size.width * 0.28,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                                offset: Offset(0, 0))
                          ]),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.logout,
                            color: Colors.amber,
                            size: 44.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.0, top: 5.0),
                            child: Text("Logout"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/OrderStatus");
                  },
                  child: const Text(
                    "Order Status",
                    style: TextStyle(color: Colors.amber),
                  ))
            ],
          ),
          Positioned(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/MenuPage");
                        },
                        icon: const Icon(
                          Icons.widgets_outlined,
                          size: 32,
                          color: Colors.amber,
                        ),
                      ),
                      const SizedBox(
                        width: 290,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.amber,
                          child: Icon(
                            Icons.shop,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 250.0, left: 15.0, right: 15.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 1.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 5.0,
                              color: Colors.grey,
                              offset: Offset(0, 3))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Column(
                        children: const [
                          Text(
                            "Jessica Jones",
                            style: TextStyle(fontSize: 22.0),
                          ),
                          Text("+1 23 456 789"),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.285,
                  left: MediaQuery.of(context).size.width * 0.4,
                  child: const CircleAvatar(
                    radius: 35.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 33.0,
                      backgroundImage:
                          AssetImage("assets/Menu_profile/girl.jpeg"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
