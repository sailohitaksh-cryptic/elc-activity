import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'favourites.dart';
import 'homescreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import 'categories.dart';
import 'student_profile_view.dart';

class SunburnDesc extends StatefulWidget {
  static String id = 'sunburn_desc';
  @override
  _SunburnDescState createState() => _SunburnDescState();
}

class _SunburnDescState extends State<SunburnDesc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Text(
                    'Sunburn',
                    style: TextStyle(
                      fontFamily: 'Mystical Snow',
                      color: Colors.white,
                      fontSize: 60.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 17),
              child: Container(
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[600],
                          offset: Offset(2.0, 2.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0),
                      BoxShadow(
                          color: Colors.white70,
                          offset: Offset(1.0, 1.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0
                      ),
                    ],
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.blue[200],
                          Colors.blue[300],
                          Colors.blue[400],
                          Colors.blue[500],
                        ],
                        stops: [
                          0.1,
                          0.3,
                          0.8,
                          1
                        ])
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Sunburn, a Percept Intellectual Property, is Asia’s Premiere Electronic Dance Music (EDM) Festival, and is ranked amongst the world’s biggest music festivals. Over the past decade, Sunburn has brought together renowned International and Indian artists to entertain hundreds of thousands of dance music lovers across the country and overseas, and positioned India as a prime dance festival destination to the world.',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      style:GoogleFonts.poppins(
                        color: Colors.white70,
                        fontSize: 20.0,
                      ),
                      text: "Open in "
                    ),
                    TextSpan(
                      style:GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      text: "Website",
                      recognizer: TapGestureRecognizer()..onTap = () async {
                        var url = "https://sunburn.in/";
                        // if(await canLaunch(url)){
                        //   await launch(url);
                        // }
                        // else{
                        //   throw "Cannot load Url";
                        // }
                        await launch(url);
                      }
                    )
                  ]
                )
              ),
            ),
            SizedBox(
              height: 27,
            ),
            Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap:(){
                      print('yes');
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.pushNamed(context,Categories.id);
                    },
                    child: Icon(
                      Icons.list,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.pushNamed(context,HomeScreen.id);
                    },
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.pushNamed(context, Favourites.id);
                    },
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.pushNamed(context, StudentProfileView.id);
                    },
                    child: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
              height:70,
              width:double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFF56E3D8),
                    Color(0xFF139CFF),
                  ],
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
