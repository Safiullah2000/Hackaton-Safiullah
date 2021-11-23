import 'package:flutter/material.dart';
import 'package:hackaton/home.dart';

var favIndex = [];

class favorite extends StatefulWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  _favoriteState createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "Favorite",
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: favIndex.length,
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
                        image: AssetImage("${images[favIndex[index]]}"),
                        height: 150,
                        width: 150,
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                      left: 10,
                      child: Text("${names[favIndex[index]]}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Positioned(
                      bottom: 60,
                      right: 10,
                      child: Text(
                        "\$${prices[favIndex[index]]}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                        bottom: 30,
                        right: 6,
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.shopping_cart)))
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
