
import 'package:flutter/material.dart';
import 'struct_.dart';
import 'second.dart';

void main() {
  runApp(MaterialApp(
    home: Page1(),
  ));
}

class Page1 extends StatefulWidget {
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  //
  // Dummy userdata
  List<UserData> userData = [
    UserData(
      email: 'user1@example.com',
      password: 'password123',
      phoneNumber: '1234567890',
      aadharNumber: '1234 5678 9011',
    ),
    UserData(
      email: 'user2@example.com',
      password: 'password456',
      phoneNumber: '9876543210',
      aadharNumber: '9876 5432 1098',
    ),
    UserData(
      email: 'user3@example.com',
      password: 'password789',
      phoneNumber: '5555555555',
      aadharNumber: '1111 2222 3333',
    ),
  ];
  //

  // Controllers for email and password fields
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Function to handle login button press
  void handleLogin() {
    try {
      // Retrieve email and password entered by the user
      String email = emailController.text;
      String password = passwordController.text;

      // Print email and password on terminal
      print('Email: $email');
      print('Password: $password');

      // Print a message to verify that navigation code is executed
      print('Navigating to Second page...');

      // Navigate to the Second screen after successful login
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => Second()),
      // );
    } catch (e) {
      print('Error occurred while handling login: $e');
    }
  }

  void forgotPassword() {
    try {
      // Print a message to verify that navigation code is executed
      print('Navigating to Second page...');

      // Navigate to the Second screen after successful login
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Second()),
      );
    } catch (e) {
      print('Error occurred while handling forgot password page: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Udhaar"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: Container(
                  height: 5.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/creditcard1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "Let's Log In",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Welcome back, you've been missed",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 30.0),
            Expanded(
              flex: 1,
              child: ListView(
                children: [
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  GestureDetector(
                    onTap: forgotPassword,
                    child: Text(
                      "Forgot Password?",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                  SizedBox(height: 60.0),
                  GestureDetector(
                    onTap: handleLogin,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0), // Adjust padding as needed
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the radius as needed
                      ),
                      child: Text(
                        "Log in",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
