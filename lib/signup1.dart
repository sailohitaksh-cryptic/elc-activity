import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart';
import 'welcome_screen.dart';

class SignUpScreen extends StatefulWidget {
  static String id ='sign_up_screen';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical:60,horizontal:40),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Center(
                  child: Text(
                    'Eventaholic',
                    style: TextStyle(
                      fontFamily: 'Mystical Snow',
                      color: Colors.black,
                      fontSize: 60.0,
                      fontWeight: FontWeight.w500,
                    ),

                  ),
                ),
              ),
              Image(image: AssetImage('images/rafiki.png'),),
              SizedBox(
                height:100.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:10,horizontal:10),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, SignUp.id);
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color:Colors.black),
                      borderRadius: BorderRadius.circular(30),

                    ),
                    child: Center(
                      child: Text(
                        'Sign Up as a Student',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),


                  ),
                ),
              ),
              SizedBox(
                height:30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:10,horizontal:10),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, WelcomeScreen.id);
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color:Colors.black),
                      borderRadius: BorderRadius.circular(30),

                    ),
                    child: Center(
                      child: Text(
                        'Go Back',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),


                  ),
                ),
              ),



            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(
              color:Colors.black,

            ),
        ),





        ),
      ),
    );
  }
}
