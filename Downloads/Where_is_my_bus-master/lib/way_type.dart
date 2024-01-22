import 'package:bus/home.dart';

import 'package:flutter/material.dart';

class Way_typ extends StatefulWidget {
  const Way_typ({Key? key}) : super(key: key);

  @override
  _Way_typState createState() => _Way_typState();
}

class _Way_typState extends State<Way_typ> {
  Color pressColor = Colors.blue;

  void _changeColor() {
    setState(() {
      pressColor = Colors.yellow;
    });

    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        pressColor = Colors.blue;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Color pressbut = Color(0xFF3D408A);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/way_2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 80, 30, 30),
            child: Container(
              width: 400,
              height: 520,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 40),
                    Align(
                      alignment: Alignment(0.0, 0.0),
                      child: Text(
                        "Enter travel details",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 35,
                        ),
                        InkWell(
                          onTap: _changeColor,
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                                color: pressbut,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Home",
                                   style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    // Customize text color as needed
                                  ),
                                ),
                                Text(
                                  "↓",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    // Customize text color as needed
                                  ),
                                ),
                                Text(
                                  "College",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    // Customize text color as needed
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 20,
                        ),
                        InkWell(
                          onTap: _changeColor,
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              color: pressbut,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "College",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    // Customize text color as needed
                                  ),
                                ),
                                Text(
                                  "↓",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    // Customize text color as needed
                                  ),
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    // Customize text color as needed
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Text(
                        "Enter your Location",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          alignLabelWithHint: true,
                          hintText: "Enter your location",
                          filled: true,
                          fillColor: Color.fromARGB(159, 210, 208, 208),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text(
                        "OR",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Search by Bus",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: pressbut,
                          onPrimary: pressbut,
                          elevation: 10,
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>my_home()),);
                        },
                        child: Text("GO"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFCD660),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 120),
                          elevation: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
