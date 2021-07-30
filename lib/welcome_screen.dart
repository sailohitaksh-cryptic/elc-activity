import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';
import 'signup1.dart';


class WelcomeScreen extends StatefulWidget {
  static String id ='welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 6,
            child: Stack(
              children:[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/welcome.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top:88.0,left:80.0),
                    child: Text(
                      'Eventaholic',
                      style: TextStyle(
                        fontFamily: 'Mystical Snow',
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w400,
                      ),

                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, LoginScreen.id);
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          height: 50,
                          width: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(30),

                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),


                        ),
                      )
                    ),
                    Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, SignUpScreen.id);
                          },
                          child: Container(

                            margin: EdgeInsets.only(left: 5),
                            height: 50,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'Sign Up',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                          ),
                        )
                    ),

                  ],
                ),
              )
          )
        ],
      ),


    );
  }
}

