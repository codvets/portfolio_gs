// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// This is coming from Haroon

main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xffFCE8E3), Color(0xffFDF7F5)],
              begin: Alignment.topCenter,
            )),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/overlay.png",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 5),
                const Text(
                  "Cassian",
                  style: TextStyle(fontSize: 28, color: Color(0xffFEA08A)),
                ),
                SizedBox(height: 5),
                const Text(
                  "Photography",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(Icons.location_on_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    const Text("Peshawar, Pakistan"),
                  ],
                ),
                // SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text("27"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Shots")
                        ],
                      ),
                      const Text(
                        "|",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text("100"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Followings")
                        ],
                      ),
                      const Text(
                        "|",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text("2.2M"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Followers")
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 35,
                  width: 160,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFFC09B),
                        Color(0xffFF9C83),
                      ],
                      //stops: [0.5, 0.2],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                      child: Text(
                    "Follow",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.grid_4x4_outlined,
                        color: Color(0xffFFA18D),
                      ),
                      Icon(
                        Icons.crop_square_outlined,
                        color: Color(0xffB2B2B2),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Photos",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/Rectangle-2.png"),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
