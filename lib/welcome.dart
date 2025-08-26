import 'package:flutter/material.dart';
import 'package:_156_fa_10/login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body: Stack(
        children: [

          Positioned.fill(child: Image.asset('assets/images/imageOne.png', fit: BoxFit.cover,)),

          Center(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.35,
                ),

                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(
                  height: height * 0.01,
                ),

                Text(
                  'Enter your details',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                  ),
                ),

                SizedBox(
                  height: height * 0.1,
                ),

                
               
               

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 10,
                    foregroundColor: Colors.blue,
                    minimumSize: Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>longin_page()));
                  }, 
                  child: Text(
                    ' N E X T',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
