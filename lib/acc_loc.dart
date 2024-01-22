import 'package:flutter/material.dart';

class Loc extends StatelessWidget {
  const Loc({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/access.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 80, 30, 30),
            child: Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
    
              child: Column(

                children: <Widget>[
                  SizedBox(height: 30),
                  Text(
                    "Enable access to ",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Text(
                    "your location",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset('assets/Bus.png'),
                  ),
                  Container(
                    child:ElevatedButton(
                      onPressed: (){},
                      child: Text("Allow",style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(),
                      ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
