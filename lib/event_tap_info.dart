import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'favourites.dart';
import 'homescreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'categories.dart';
import 'student_profile_view.dart';

class EventTapInfo extends StatefulWidget {
  static String id = 'event_tap_info';
  @override
  _EventTapInfoState createState() => _EventTapInfoState();
}

class _EventTapInfoState extends State<EventTapInfo> {
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
                    'J.AR.VIS',
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
                        'Get your shields up, pick up your hammers, prepare your magic spells and come with us on Bifrost, as we Thapar Owasp Student Chapter, as your Heimdall, give you the ride to the world of coding and brainstorming fun challenges. We bring to you JARVIS; a 3-day long journey of experience, learning, and fun. Dive into the gigantic Universe of Marvel with your adroitness and hustle along with the competitive spirit of no less than the Avengers.',
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
                  text: TextSpan(children: [
                TextSpan(
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 20.0,
                    ),
                    text: "Open in "),
                TextSpan(
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                    text: "Website",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        var url = "http://jarvis.owasp.co.in/";
                        // if(await canLaunch(url)){
                        //   await launch(url);
                        // }
                        // else{
                        //   throw "Cannot load Url";
                        // }
                        await launch(url);
                      })
              ])),
            ),
            SizedBox(
              height: 27,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('yes');
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Categories.id);
                    },
                    child: Icon(
                      Icons.list,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, HomeScreen.id);
                    },
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Favourites.id);
                    },
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
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
              height: 70,
              width: double.infinity,
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
