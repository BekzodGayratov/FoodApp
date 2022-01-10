import 'package:app/screens/first_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      return Navigator.pushNamed(context, "/FirstPage");
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "F",
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.restaurant_menu_outlined,
                  color: Colors.amber,
                  size: 42,
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.restaurant_menu_outlined,
                  color: Colors.amber,
                  size: 42,
                ),
              ),
              Text(
                "D",
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "I",
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "Z",
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "M",
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
