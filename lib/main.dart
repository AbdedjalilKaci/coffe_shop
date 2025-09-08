import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int randomnumber = 0;
  void createnewnumber() {
    randomnumber = Random().nextInt(100);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.coffee, size: 40, color: Colors.black),
                  Text(
                    "Coffee Shop",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/coffe.png"),
              ),
              Card(
                color: Colors.brown,
                child: ListTile(
                  onTap: () {
                    setState(() {
                      createnewnumber();
                    });
                  },
                  leading: Icon(Icons.coffee, color: Colors.black),
                  title: Text(
                    "Buy me a coffee",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Text('The new number is :$randomnumber'),
            ],
          ),
        ),
      ),
    );
  }
}
