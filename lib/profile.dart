import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Card(
              child: Container(
                height: 150,
                width: 400,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.blue,
                    ),
                    Text(
                      "Safiullah Parvez",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Email",
            style: TextStyle(
              color: Colors.orange.shade800,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("safiullah.parvez123@gmail.com"),
          SizedBox(
            height: 20,
          ),
          Text(
            "Phone Number",
            style: TextStyle(
              color: Colors.orange.shade800,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("03013112000"),
          SizedBox(
            height: 20,
          ),
          Text(
            "Date of Birth",
            style: TextStyle(
              color: Colors.orange.shade800,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("31-12-2000"),
          SizedBox(
            height: 20,
          ),
          Text(
            "City",
            style: TextStyle(
              color: Colors.orange.shade800,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("Karachi"),
          SizedBox(
            height: 20,
          ),
          Icon(Icons.favorite, color: Colors.red)
        ],
      ),
    );
  }
}
