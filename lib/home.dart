import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hackaton/about.dart';
import 'package:hackaton/cart.dart';
import 'package:hackaton/favorite.dart';
import 'package:hackaton/login.dart';

class home extends StatefulWidget {
  static var images = [
    "images/shoes.jfif",
    "images/suit.jpg",
    "images/shirts.jpg",
    "images/t-shirts.jfif",
    "images/joggers.jfif",
    "images/jeans.jfif",
    "images/track_suits.jfif"
  ];
  static var names = [
    "Shoes",
    "Suit",
    "Shirts",
    "T-Shirts",
    "Joggers",
    "Jeans",
    "Track Suits"
  ];
  static var pieces = ["10", "5", "18", "9", "0", "3", "22"];
  static var prices = ["50", "100", "150", "200", "250", "300", "350", "400"];

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
              onPressed: () {},
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
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: home.names.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    child: Container(
                      height: 100,
                      width: 210,
                      child: ListTile(
                        leading:
                            Image(image: AssetImage("${home.images[index]}")),
                        title: Text(
                          "${home.names[index]}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "${home.pieces[index]} pieces left",
                          style: TextStyle(
                              fontSize: 15, color: Colors.blue.shade800),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 420,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: home.names.length,
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
                            left: 10,
                            top: 5,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
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
                              image: AssetImage("${home.images[index]}"),
                              height: 150,
                              width: 150,
                            ),
                          ),
                          Positioned(
                            bottom: 60,
                            left: 10,
                            child: Text("${home.names[index]}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          Positioned(
                            bottom: 60,
                            right: 10,
                            child: Text(
                              "\$${home.prices[index]}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                              bottom: 30,
                              right: 6,
                              child: IconButton(
                                  onPressed: () {
                                    cart.cartIndex.add(index);
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
    );
  }
}
