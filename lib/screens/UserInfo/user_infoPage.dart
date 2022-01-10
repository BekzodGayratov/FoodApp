import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
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
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Information",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit_rounded,
                      color: Colors.amber,
                    ))
              ],
            ),
          ),
          const ListTile(
            leading: Text(
              "Username",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text("Johndoe123"),
          ),
          const Divider(
            height: 16.0,
            color: Colors.black,
          ),
          const ListTile(
            leading: Text(
              "Email",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text("johndoe@gmail.com"),
          ),
          const Divider(
            color: Colors.black,
          ),
          const ListTile(
            leading: Text(
              "Phone",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text("+ 1 23 567 890"),
          ),
          const Divider(
            color: Colors.black,
          ),
          const ListTile(
            leading: Text(
              "Gender",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text("Male"),
          ),
          const Divider(
            color: Colors.black,
          ),
          const ListTile(
            leading: Text(
              "Date of birth",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text("16/04/1998"),
          ),
          const Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
