
import 'package:flutter/material.dart';
import 'package:bus/way_type.dart';

class Log_ extends StatefulWidget {
  const Log_({Key? key}) : super(key: key);

  @override
  State<Log_> createState() => _Log_State();
}

class _Log_State extends State<Log_> {
  TextEditingController _studentIdController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/log_1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 80, 30, 30),
            child:SingleChildScrollView(
            child: Container(
              width: 400,
              height: 500,
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
                      "Login",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        
                      ),
                    ),
                  ),
Container(
  height: 30,
),

Container(
  width: 300,
  height: 55,
  child: TextField(
    cursorWidth: 2,
    controller: _studentIdController,
    decoration: InputDecoration(
      filled: true,
      fillColor: Color.fromARGB(159, 210, 208, 208),
      labelText: "Student ID",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  ),
),
SizedBox(height: 30),
Container(
  width: 300,
  height: 55,
  child: TextField(
    
    cursorWidth: 2,
    controller: _emailController,
    decoration: InputDecoration(
      filled: true,
      fillColor: Color.fromARGB(159, 210, 208, 208),
      labelText: "EMAIL",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  ),
),
SizedBox(height: 30),
Container(
  width: 300,
  height: 55,
  child: TextField(
    
    cursorWidth: 2,
    controller: _passwordController,
    decoration: InputDecoration(
      filled: true,
      fillColor: Color.fromARGB(159, 210, 208, 208),
      labelText: "Password",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  ),
),
const SizedBox(height: 35),

ElevatedButton( 
  onPressed: (){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Way_typ()),);
  }, 
  child:Text(
    "LOGIN",style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      ),
      ),
  style: ButtonStyle(
    minimumSize: MaterialStateProperty.all(Size(250, 48)),
    elevation: MaterialStateProperty.all(1),
    backgroundColor: MaterialStateColor.resolveWith((states) => Color.fromARGB(255, 6, 18, 109),
    ),
  ),
  ),
SizedBox(height: 5),
Container(
  child:TextButton(onPressed:(){},child: Text("Forgot Password?"),)
),

                ],
              ),
            ),
          ),
        ),
      ),
    ),);
  }
}
