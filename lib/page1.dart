import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[500],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Image
            Center(
              child: Container(
                margin: const EdgeInsets.all(5),
                child: const CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage("req/pro.png"),
                ),
              ),
            ),

            // Name
            const Text(
              "Om Singh",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'S-P',
              ),
            ),

            // Role
            const Text(
              "Flutter & cloud Developer",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'T-P',
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 280,
              child: Divider(color: Colors.black),
            ),

            // Phone Card
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(
                vertical: 10.2,
                horizontal: 55.2,
              ),
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.black, size: 30),
                  title: Text("8788493707", style: TextStyle(fontSize: 20)),
                ),
              ),
            ),

            // Email Card
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(
                vertical: 8.2,
                horizontal: 30.2,
              ),
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.black, size: 30),
                  title: Text(
                    "os0106897@Gmail.com",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
