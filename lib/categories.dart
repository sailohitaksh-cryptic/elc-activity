import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homescreen.dart';
import 'favourites.dart';
import 'student_profile_view.dart';

class Categories extends StatefulWidget {
  static String id ='categories';
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
         title:Text("Categories"),
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
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height:150,
                          width:150,
                          child: GestureDetector(
                            onTap: (){
                              print('yes');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('images/techinal.png'),
                              ),
                            ),
                            ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          'Technical',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        Container(
                          height:150,
                          width:150,
                          child: GestureDetector(
                            onTap: (){
                              print('yes');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('images/dance.png'),
                              ),
                            ),
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          'Dance',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height:150,
                          width:150,
                          child: GestureDetector(
                            onTap: (){
                              print('yes');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('images/arts.png'),
                              ),
                            ),
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          'Arts',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        Container(
                          height:150,
                          width:150,
                          child: GestureDetector(
                            onTap: (){
                              print('yes');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('images/dance.png'),
                              ),
                            ),
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          'Dance',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height:150,
                          width:150,
                          child: GestureDetector(
                            onTap: (){
                              print('yes');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('images/robotics.png'),
                              ),
                            ),
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          'Robotics',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        Container(
                          height:150,
                          width:150,
                          child: GestureDetector(
                            onTap: (){
                              print('yes');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('images/photography.png'),
                              ),
                            ),
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          'Photography',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height:150,
                          width:150,
                          child: GestureDetector(
                            onTap: (){
                              print('yes');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('images/business.png'),
                              ),
                            ),
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          'Business',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        Container(
                          height:150,
                          width:150,
                          child: GestureDetector(
                            onTap: (){
                              print('yes');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('images/research.png'),
                              ),
                            ),
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          'Research',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),

                  ],
                ),
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
        ),
      ),
    );
  }
}
