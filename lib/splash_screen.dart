import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';
import 'welcome_screen.dart';



class SplashScreen extends StatefulWidget {
  static String id ='splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();

    _mockCheckForSession().then(
            (status) {
          _navigateToHome();
        }
    );
  }


  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 7000), () {});

    return true;
  }

  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => WelcomeScreen(),
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Opacity(
                opacity: 1.0,
                //child: Image.asset('images/app_icon.png')
            ),

            Shimmer.fromColors(
              period: Duration(milliseconds: 1500),
              baseColor: Color(0xffeeecec),
              highlightColor: Color(0xff525050),
              child: Container(
                //padding: EdgeInsets.only(top: 310.0,left:20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Eventaholic",
                        style: TextStyle(
                            fontSize: 75.0,
                            fontFamily: 'Mystical Snow',
                            shadows: <Shadow>[
                              Shadow(
                                  blurRadius: 15.0,
                                  color: Colors.black87,
                                  offset: Offset.fromDirection(90, 8)
                              )
                            ]
                        ),
                      ),
                    ),
                    // Text(
                    //   "Event the chances",
                    //   style: TextStyle(
                    //       fontSize: 40.0,
                    //       fontFamily: 'Mystical Snow',
                    //       shadows: <Shadow>[
                    //         Shadow(
                    //             blurRadius: 18.0,
                    //             color: Colors.black87,
                    //             offset: Offset.fromDirection(90, 8)
                    //         )
                    //       ]
                    //   ),
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/img/splash screen bg.png'),
        //   ),
        // ),
      ),

    );
  }


}