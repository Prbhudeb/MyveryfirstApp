import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var icox1 = CupertinoIcons.heart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        body: Center(
          child: IconButton(
            iconSize: 200,
            onPressed: () {
              setState(() {
                if (icox1 == CupertinoIcons.heart_fill) {
                  icox1 = CupertinoIcons.heart;
                } else if (icox1 == CupertinoIcons.heart) {
                  icox1 = CupertinoIcons.heart_fill;
                }
              });
            },
            icon: Icon(icox1),
            color: Colors.red,
          ),
        ));
  }
}
