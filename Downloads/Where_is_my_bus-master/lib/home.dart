import 'package:bus/maps.dart';
import 'package:flutter/material.dart';

class my_home extends StatefulWidget {
  const my_home({super.key});

  @override
  State<my_home> createState() => _MyWidgetState();
}
Color cont_hom = Color(0xFF919191);
class _MyWidgetState extends State<my_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/home.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding:EdgeInsets.fromLTRB(30, 80, 30, 30) ,
            child: SingleChildScrollView(
              
              child: Container(
                width: 400,
                height: 700,
                decoration:const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                    const SizedBox(height: 20),
                    const Align(
                    alignment: Alignment(0.0, 0.0),
                    
                    child: Text(
                      "BUS ROUTES",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        
                      ),
                    ),
                    ),

                SizedBox(height: 30,),

                Material(
  elevation: 20,
  borderRadius: BorderRadius.circular(30),
  shadowColor: Color.fromARGB(255, 255, 255, 255),
  child: InkWell(
    onTap: () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MapPage()),);
      // Handle tap event
    },
    highlightColor: const Color.fromARGB(0, 255, 255, 255),
    child: Container(
      height: 90,
      width: 300,
      decoration: BoxDecoration(
        color: cont_hom,
        borderRadius: BorderRadius.circular(20),
        shape: BoxShape.rectangle,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0), 
            child: Image.asset(
              'assets/Bus.png',
              width: 70,
              height: 70,
            ),
          ),
          SizedBox(width: 20,),
          Column(
            children:<Widget> [
              SizedBox(height:20),
              Text("Route No : 2",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),

              Text("Miyapur - MLRIT",style: TextStyle(fontSize: 15),),
            ],
          ),
        ],
      ),
    ),
  ),
),




SizedBox(height:5),
                Material(
  elevation: 20,
  borderRadius: BorderRadius.circular(30),
  shadowColor: Color.fromARGB(255, 255, 255, 255),
  child: InkWell(
    onTap: () {
      // Handle tap event
    },
    highlightColor: const Color.fromARGB(0, 255, 255, 255),
    child: Container(
      height: 90,
      width: 300,
      decoration: BoxDecoration(
        color: cont_hom,
        borderRadius: BorderRadius.circular(20),
        shape: BoxShape.rectangle,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0), 
            child: Image.asset(
              'assets/Bus.png',
              width: 70,
              height: 70,
            ),
          ),
          SizedBox(width: 20,),
          Column(
            children:<Widget> [
              SizedBox(height:20),
              Text("Route No : 3",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),

              Text("Miyapur - MLRIT",style: TextStyle(fontSize: 15),),
            ],
          ),
        ],
      ),
    ),
  ),
),
SizedBox(height:5),
                Material(
  elevation: 20,
  borderRadius: BorderRadius.circular(30),
  shadowColor: Color.fromARGB(255, 255, 255, 255),
  child: InkWell(
    onTap: () {
      // Handle tap event
    },
    highlightColor: const Color.fromARGB(0, 255, 255, 255),
    child: Container(
      height: 90,
      width: 300,
      decoration: BoxDecoration(
        color: cont_hom,
        borderRadius: BorderRadius.circular(20),
        shape: BoxShape.rectangle,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0), 
            child: Image.asset(
              'assets/Bus.png',
              width: 70,
              height: 70,
            ),
          ),
          SizedBox(width: 20,),
          Column(
            children:<Widget> [
              SizedBox(height:20),
              Text("Route No : 4",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),

              Text("Miyapur - MLRIT",style: TextStyle(fontSize: 15),),
            ],
          ),
        ],
      ),
    ),
  ),
),
SizedBox(height:5),
                Material(
  elevation: 20,
  borderRadius: BorderRadius.circular(30),
  shadowColor: Color.fromARGB(255, 255, 255, 255),
  child: InkWell(
    onTap: () {
      // Handle tap event
    },
    highlightColor: const Color.fromARGB(0, 255, 255, 255),
    child: Container(
      height: 90,
      width: 300,
      decoration: BoxDecoration(
        color: cont_hom,
        borderRadius: BorderRadius.circular(20),
        shape: BoxShape.rectangle,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0), 
            child: Image.asset(
              'assets/Bus.png',
              width: 70,
              height: 70,
            ),
          ),
          SizedBox(width: 20,),
          Column(
            children:<Widget> [
              SizedBox(height:20),
              Text("Route No : 5",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),

              Text("Miyapur - MLRIT",style: TextStyle(fontSize: 15),),
            ],
          ),
        ],
      ),
    ),
  ),
),
SizedBox(height:5),
                Material(
  elevation: 20,
  borderRadius: BorderRadius.circular(30),
  shadowColor: Color.fromARGB(255, 255, 255, 255),
  child: InkWell(
    onTap: () {
      // Handle tap event
    },
    highlightColor: const Color.fromARGB(0, 255, 255, 255),
    child: Container(
      height: 90,
      width: 300,
      decoration: BoxDecoration(
        color: cont_hom,
        borderRadius: BorderRadius.circular(20),
        shape: BoxShape.rectangle,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0), 
            child: Image.asset(
              'assets/Bus.png',
              width: 70,
              height: 70,
            ),
          ),
          SizedBox(width: 20,),
          Column(
            children:<Widget> [
              SizedBox(height:20),
              Text("Route No : 6",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),

              Text("Miyapur - MLRIT",style: TextStyle(fontSize: 15),),
            ],
          ),
        ],
      ),
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
