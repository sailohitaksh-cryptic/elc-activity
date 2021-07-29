import 'package:flutter/material.dart';
import 'event_tap_info.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homescreen.dart';
import 'student_profile_view.dart';
import 'categories.dart';
import 'sunburn_desc.dart';

class Favourites extends StatefulWidget {
  static String id ='favourites';
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text("Favourites"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF56E3D8),
                Color(0xFF139CFF)],

            ),
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top:15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal:40.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, EventTapInfo.id);
                  },
                  child: Container(

                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white70,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 4.0,
                              spreadRadius: 0.0
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
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(90,0,30,0),
                                child: Text(
                                  'J.AR.VIS',
                                  style: GoogleFonts.pattaya(
                                    color: Colors.black,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap:(){
                                  print('yes');
                                },
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 40.0,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Category: Technical',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'Society: Owasp',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'Date: 29-31 July 2021',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),


                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal:40.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, SunburnDesc.id);
                  },
                  child: Container(

                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white70,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 4.0,
                              spreadRadius: 0.0
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
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(100,0,40,0),
                                child: Text(
                                  'Sunburn',
                                  style: GoogleFonts.pattaya(
                                    color: Colors.black,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap:(){
                                  print('yes');
                                },
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 40.0,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Category: Dance',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'Society:N/A',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'Date: 20-21 Aug 2021',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),


                  ),
                ),
              ),
              SizedBox(
                height:290,
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
                        Navigator.pushNamed(context, HomeScreen.id);
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
