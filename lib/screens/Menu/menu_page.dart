import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 50),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 10.0, bottom: 25.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: MediaQuery.of(context).size.width * 0.27,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/Menu_profile/girl.jpeg'),
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        Column(
                          children: [
                            InkWell(
                              child: const CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.home_outlined,
                                  size: 33,
                                  color: Colors.amber,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  Navigator.pushNamed(context, "/ShoppingPage");
                                });
                              },
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              "Home",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Column(
                          children: [
                            InkWell(
                              child: const CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.restaurant_menu_rounded,
                                  size: 33,
                                  color: Colors.amber,
                                ),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, "/MenuMainPage");
                              },
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              "Menu",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Column(
                          children: [
                            InkWell(
                              child: const CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.note_alt_outlined,
                                  size: 33,
                                  color: Colors.amber,
                                ),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, "/MyOrderPage");
                              },
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              "My Orders",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Column(
                          children: [
                            InkWell(
                              child: const CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.settings,
                                  size: 33,
                                  color: Colors.amber,
                                ),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, "/Settings");
                              },
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              "Settings",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: InkWell(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width * 0.47,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/Menu_profile/main.jpg')),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xffEEEBD3),
                                blurRadius: 5,
                                offset: Offset(-15, -5),
                              )
                            ]),
                      ),
                      onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, "/ShoppingPage");
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.97,
              left: MediaQuery.of(context).size.width * 0.2,
              child: const Text(
                "App version 1.1",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
