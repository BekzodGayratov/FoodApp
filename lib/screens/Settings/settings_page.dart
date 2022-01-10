import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
              "Settings",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              color: const Color(0xffE2E2EA),
              height: MediaQuery.of(context).size.height * 0.05,
              width: double.infinity,
              child: const Center(
                child: Text("User Information"),
              ),
            ),
          ),
          InkWell(
            child: const Card(
              child: ListTile(
                leading: Text("Information & Contact"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/UserInfo");
            },
          ),
          InkWell(
            child: const Card(
              child: ListTile(
                leading: Text("Change Password"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/ChangePassword");
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              color: const Color(0xffE2E2EA),
              height: MediaQuery.of(context).size.height * 0.05,
              width: double.infinity,
              child: const Center(
                child: Text("App settings"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text("App version"), Text("1.0.1")],
            ),
          )
        ],
      ),
    );
  }
}
