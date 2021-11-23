import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hackaton/about.dart';
import 'package:hackaton/cart.dart';
import 'package:hackaton/favorite.dart';
import 'package:hackaton/login.dart';

List<IconData> fav = [
  Icons.favorite_outline,
  Icons.favorite_outline,
  Icons.favorite_outline,
  Icons.favorite_outline,
  Icons.favorite_outline,
  Icons.favorite_outline,
  Icons.favorite_outline,
];

var images = [
  "images/shoes.jfif",
  "images/suit.jpg",
  "images/shirts.jpg",
  "images/t-shirts.jfif",
  "images/joggers.jfif",
  "images/jeans.jfif",
  "images/track_suits.jfif"
];
var names = [
  "Shoes",
  "Suit",
  "Shirts",
  "T-Shirts",
  "Joggers",
  "Jeans",
  "Track Suits"
];
var pieces = ["10", "5", "18", "9", "0", "3", "22"];
var prices = ["50", "100", "150", "200", "250", "300", "350", "400"];

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: ListTile(
                leading: CircleAvatar(
                  child: Image(image: AssetImage("images/user.png")),
                  radius: 25,
                ),
                title: Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("abcuser@gmail.com"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: const Text('Cart'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cart()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: const Text('Favorite'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => favorite()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => about()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        backgroundColor: Colors.white,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => favorite()),
                );
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cart()),
                );
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.red,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 10,
                      child: Container(
                        height: 100,
                        width: 210,
                        child: ListTile(
                          leading: Image(image: AssetImage("${images[index]}")),
                          title: Text(
                            "${names[index]}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "${pieces[index]} pieces left",
                            style: TextStyle(
                                fontSize: 15, color: Colors.blue.shade800),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(20),
                      elevation: 5,
                      child: Container(
                        height: 250,
                        width: 200,
                        child: Stack(
                          children: [
                            Positioned(
                                left: 8,
                                top: 5,
                                child: GestureDetector(
                                  onTap: () {
                                    favIndex.add(index);
                                    setState(() {
                                      fav[index] = Icons.favorite;
                                    });
                                  },
                                  child: Icon(
                                    fav[index],
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                )),
                            Positioned(
                              right: 10,
                              top: 5,
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange.shade900,
                                ),
                                child: Text(
                                  "30%off",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10,
                              top: 15,
                              right: 10,
                              child: Image(
                                image: AssetImage("${images[index]}"),
                                height: 150,
                                width: 150,
                              ),
                            ),
                            Positioned(
                              bottom: 60,
                              left: 10,
                              child: Text("${names[index]}",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            Positioned(
                              bottom: 60,
                              right: 10,
                              child: Text(
                                "\$${prices[index]}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                                bottom: 20,
                                right: 0,
                                child: IconButton(
                                    iconSize: 30,
                                    onPressed: () {
                                      cartIndex.add(index);
                                    },
                                    icon: Icon(Icons.shopping_cart)))
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
