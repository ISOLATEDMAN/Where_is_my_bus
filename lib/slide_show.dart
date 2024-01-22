import 'package:flutter/material.dart';
import 'package:bus/login.dart';

class Slides extends StatefulWidget {
  const Slides({Key? key}) : super(key: key);

  @override
  _SlidesState createState() => _SlidesState();
}

class _SlidesState extends State<Slides> {
  @override
  void initState() {
    super.initState();
    _navigatelog();
  }

  _navigatelog() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Log_()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset('assets/slide_1.png'),
        ),
      ),
    );
  }
}