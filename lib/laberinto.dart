import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'favourites.dart';
import 'homescreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'categories.dart';
import 'student_profile_view.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class Laberinto extends StatefulWidget {
  static String id = 'laberinto';
  @override
  _LaberintoState createState() => _LaberintoState();
}

class _LaberintoState extends State<Laberinto> {
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
                    'Laberinto',
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
                        '"𝐈𝐟 𝐩𝐮𝐳𝐳𝐥𝐞𝐬 𝐚𝐫𝐞 𝐲𝐨𝐮𝐫 𝐜𝐚𝐫𝐝𝐢𝐨,𝐭𝐡𝐞𝐧 𝐰𝐞 𝐚𝐫𝐞 𝐫𝐨𝐨𝐭𝐢𝐧𝐠 𝐟𝐨𝐫 𝐲𝐨𝐮 𝐚𝐭 𝐋𝐀𝐁𝐄𝐑𝐈𝐍𝐓𝐎" - something that transcends the definition of being "just another CTF".\nSo put your brainstorming skills a notch higher as you dive into this pandoras box of mind-boggling challenges and find your way out of this cryptic labyrinth. Get ready for adrenaline rush, where you choose your own path and every step unfolds a unique mystery ;)',
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
                              var url = "https://media.tenor.com/images/0dcd7d91149f5f146d749689dcba156f/tenor.gif";
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
