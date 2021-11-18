import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.lightBlue.shade500,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: AssetImage("images/mail.png"),
                  height: 130,
                  width: 130,
                ),
                SizedBox(height: 40),
                Text(
                  "Drop line about us",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "...",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Icon(
            Icons.location_pin,
            color: Colors.red,
          ),
          SizedBox(
            height: 20,
          ),
          Text("267 Julian Moterway, Lalukheat, Karachi"),
          SizedBox(
            height: 20,
          ),
          Text("Open Map"),
          SizedBox(
            height: 20,
          ),
          Icon(Icons.mobile_screen_share, color: Colors.red),
          SizedBox(
            height: 20,
          ),
          Text("0900-78601"),
          SizedBox(
            height: 20,
          ),
          Icon(
            Icons.timer,
            color: Colors.red,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Monday-Friday"),
          SizedBox(
            height: 20,
          ),
          Text("09:00-17:00"),
        ],
      ),
    );
  }
}
