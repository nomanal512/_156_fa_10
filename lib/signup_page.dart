import 'package:flutter/material.dart';

// This is the new file for your RegistrationPage.
// You would typically save this as 'registration_page.dart' in your 'lib' folder.

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Background will be covered by Stack
      body: Stack(
        children: [
          // Background Image from your assets
          Positioned.fill(
            // Make sure 'assets/images/imageOne.png' is correctly added to your pubspec.yaml
            child: Image.asset('assets/images/imageOne.png', fit: BoxFit.cover),
          ),
          // Back button
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the previous page (LoginPage)
              },
              icon: Icon(Icons.arrow_back, color: Colors.white, size: 28),
            ),
          ),
          // Content column (registration form)
          Column(
            children: [
              // Spacer to push the white container down
              Expanded(
                flex: 1, // Consistent top spacing
                child: SizedBox(),
              ),
              // White container for the registration form
              Expanded(
                flex: 3, // Consistent card height
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // "Get Started" text
                      Text(
                        "Get Started",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF8e44ad), // Purple color
                          fontFamily: 'Inter',
                        ),
                      ),
                      SizedBox(height: 30), // Spacing
                      // Email TextField
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "Enter your email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Color(0xFF8e44ad), width: 2),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        ),
                      ),
                      SizedBox(height: 20), // Spacing
                      // Password TextField
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter your password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Color(0xFF8e44ad), width: 2),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        ),
                      ),
                      SizedBox(height: 20), // Spacing
                      // Confirm Password TextField
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Confirm Password",
                          hintText: "Re-enter your password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Color(0xFF8e44ad), width: 2),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        ),
                      ),
                      SizedBox(height: 30), // Spacing
                      // Sign Up Button
                      ElevatedButton(
                        onPressed: () {
                          // Handle registration logic
                          print("Sign Up Button Pressed on Registration Page");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF8e44ad), // Purple button color
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 5,
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20), // Spacing
                      // "Already have an account?" text and "Sign In" button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                          ),
                          TextButton(
                            onPressed: () {
                              // Navigate back to the LoginPage
                              Navigator.pop(context); // Pops the current page off the stack
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                color: Color(0xFF8e44ad), // Purple color for "Sign In"
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}