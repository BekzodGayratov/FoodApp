import 'package:app/screens/MenuMain/menuMainData.dart';
import 'package:flutter/material.dart';

class MenuMainPage extends StatefulWidget {
  const MenuMainPage({Key? key}) : super(key: key);

  @override
  _MenuMainPageState createState() => _MenuMainPageState();
}

class _MenuMainPageState extends State<MenuMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    width: 250,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.search,
                        size: 28,
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
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, bottom: 5),
              child: Text(
                "FOODIZM",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, bottom: 20),
              child: Text(
                "MENU",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width * 1.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: MediaQuery.of(context).size.height * 0.047,
                      width: MediaQuery.of(context).size.width * 0.17,
                      decoration: BoxDecoration(
                          color: index != 1
                              ? const Color(0xffECEBE4)
                              : Colors.amber,
                          borderRadius: BorderRadius.circular(33.0)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage(menuPaths[index]),
                            ),
                          ),
                          Text(mealsName[index])
                        ],
                      ),
                    );
                  },
                  itemCount: menuPaths.length,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 25.0),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.65,
                  width: MediaQuery.of(context).size.width * 0.91,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const[
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(0, -2)
                        )
                      ]
                      ),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Container(
                         margin: const EdgeInsets.all(8.0),
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.01,
                        
                          child: Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 0.13,
                                width: MediaQuery.of(context).size.width * 0.45,
                                
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.amber, width: 2.0),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/MenuMainPage/pitsa.jpeg'),
                                  ),
                                  shape: BoxShape.circle
                                ),
                              ),
                              const Text("Lazania Pizza", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                              const Text("128 \$", style: TextStyle(fontWeight: FontWeight.w500),),
                            ],
                          ),
                        );
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
