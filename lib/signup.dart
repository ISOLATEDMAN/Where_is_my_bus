import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: SignUpForm(),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _studentIDController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text('Sign Up', style: TextStyle(fontSize: 30)),
          TextFormField(
            controller: _studentIDController,
            decoration: InputDecoration(labelText: 'Student ID'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your student ID';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              // Add more validation for email format, etc.
              return null;
            },
          ),
          TextFormField(
            controller: _passwordController,
            obscureText:true,
            decoration:
                InputDecoration(labelText:'Password'),
            validator:(value){
               if(value==null|| value.isEmpty){
                 return'Please enter password';
               }
               //Add more validation for password strength, etc.
               return null;
             },
           ),
           TextFormField(
             controller: _confirmPasswordController,
             obscureText:true,
             decoration:
                 InputDecoration(labelText:'Confirm Password'),
             validator:(value){
                if(value==null|| value.isEmpty){
                  return'Please confirm your password';
                }
                if(value != _passwordController.text){
                  return 'Passwords do not match';
                }
                //Add more validation to check if passwords match, etc.
                return null;
              },
           ),
           ElevatedButton(
             onPressed: () {
               if (_formKey.currentState!.validate()) {
                 // Process data.
               }
             },
             child: Text('Sign Up')
           ),
         ],
       )
     );
   }
}
