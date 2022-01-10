import 'package:app/screens/Location/locationInput.dart';
import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/location.jpg'),
              )),
            ),
          ),
          const Text(
            "Hi! Nice to meet you ",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 80),
            child: Text('''Please allow your location 
    to continue using app'''),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.047,
            width: MediaQuery.of(context).size.width * 0.6,
            child: OutlinedButton(
              onPressed: () {
                showMyAlert();
              },
              child: const Text(
                "User current location",
                style: TextStyle(color: Colors.amber),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.amber),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  showMyAlert() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Row(
              children: const [
                Icon(
                  Icons.location_pin,
                  size: 38,
                  color: Colors.amber,
                ),
                Text(
                  '''Allow Foodmap to access 
this location's deivces ''',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
            actions: [
              ButtonBar(
                children: [
                  TextButton(
                    onPressed: () {
                      allow = false;
                      userInputs.add(allow!);
                      Navigator.pushNamed(context, '/ShoppingPage');
                    },
                    child: const Text(
                      "Deny",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      allow = true;
                      userInputs.add(allow!);
                      Navigator.pushNamed(context, '/ShoppingPage');
                    },
                    child: const Text("Allow",
                        style: TextStyle(color: Colors.amber)),
                  )
                ],
              )
            ],
          );
        });
  }
}
