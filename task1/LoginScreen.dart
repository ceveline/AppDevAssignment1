import 'package:flutter/material.dart';
import 'MainScreen.dart';

//

class LoginScreen extends StatelessWidget {
  String email = "kathy@gmail.com";
  String password = "12345";

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController(); // Move controller initialization here
    TextEditingController _passwordController = TextEditingController(); // Move controller initialization here

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.chat, size: 140, color: Colors.pink,),
              SizedBox(height: 25,),
              Container(
                width: 280, // Set the desired width
                height: 50, // Set the desired height
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: "Email",
                    fillColor: Colors.white70,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 280, // Set the desired width
                height: 50, // Set the desired height
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: "Password",
                    fillColor: Colors.white70,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 280,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_emailController.text == email && _passwordController.text == password) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login successfully")));
                      // Navigator.pushNamed(context, '/Second', arguments: 'Hello from home page');
                      // Inside your login page where you handle successful login
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),
                      );

                    }
                    else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Login failed")));
                    }
                    // navigate to the second screen using named route
                  },
                  child: Text('Login'),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
