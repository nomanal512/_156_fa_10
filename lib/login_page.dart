import 'package:flutter/material.dart';
import 'package:_156_fa_10/signup_page.dart';

class longin_page extends StatefulWidget {
  const longin_page({super.key});

  @override
  State<longin_page> createState() => _longin_pageState();
}

class _longin_pageState extends State<longin_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/imageOne.png', fit: BoxFit.cover,)
            ),
           Positioned(
            top: 40,
            left: 10,
            child: IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back, color: Colors.white,))
            
            ),
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 100,
                  ),
                ), 
                Expanded(
                  flex: 4,
                
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                      topRight: Radius.circular(10)
                      )
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Welcome",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF8e44ad), // Purple color for the text
                          fontFamily: 'Inter', // Assuming Inter font, or adjust to your app's font
                        ),
                        ),
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
                        TextField(
                        obscureText: true, // Hide password input
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

                        Row(
                          children: [
                            Text("Don't have an accound?"),
                            TextButton(
                            onPressed: () {
                              // Navigate to the RegistrationPage
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => RegistrationPage()),
                              );
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Color(0xFF8e44ad), // Purple color for "Sign Up"
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
                )
              ],
            )
        ],
      ),


    );
  }
}