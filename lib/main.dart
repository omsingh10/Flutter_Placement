import 'package:flutter/material.dart';


import 'page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oshiv',
      home: const HelloPage(),
      routes: {
        'Page1': (context) => const Page1(),
      },
    );
  }
}

class HelloPage extends StatelessWidget {
  const HelloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 73,
              width: 30,
              color: Colors.red,
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 72,
              width: 36,
              color: Colors.green,
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      "Phone",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 72,
              width: 36,
              color: Colors.pink,
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      "Email",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 72,
              width: 36,
              color: Colors.blue,
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.settings, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      "Settings",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 55,
              width: 22,
              child: Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Page1');
                  },
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text("New Page"),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
          print('Floating Action Button Pressed!');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
