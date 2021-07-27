import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'studentprofile.dart';
import 'welcome_screen.dart';
import 'favourites.dart';
import 'categories.dart';
import 'homescreen.dart';

class StudentProfileView extends StatefulWidget {
  static String id = 'student_profile_view_screen';

  @override
  _StudentProfileViewState createState() => _StudentProfileViewState();
}

class _StudentProfileViewState extends State<StudentProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Center(
          child: Text(
            'My Account',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 36.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xFF56E3D8),
                  Color(0xFF139CFF),
                ]),
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Icon(
                Icons.account_circle_outlined,
                color: Color(0xFF139CFF),
                size: 200.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 6.0, right: 20),
              child: Container(
                height: 50,
                width: 170,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF139CFF),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 17.0),
                  child: Text(
                    'Name',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF139CFF),
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 6.0, right: 20),
              child: Container(
                height: 50,
                width: 170,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF139CFF),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 17.0),
                  child: Text(
                    'Username',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF139CFF),
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 6.0, right: 20.0),
              child: Container(
                height: 50,
                width: 170,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF139CFF),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 17.0),
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF139CFF),
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 6.0, right: 20.0),
              child: Container(
                height: 50,
                width: 170,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF139CFF),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 17.0),
                  child: Text(
                    'Phone',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF139CFF),
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 6.0),
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF139CFF),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 17.0),
                      child: Text(
                        'Branch',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF139CFF),
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 6.0),
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF139CFF),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0, top: 8.0),
                      child: Text(
                        'Graduation Year',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF139CFF),
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
              const EdgeInsets.only(top: 45.0, left: 120.0, right: 120.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, StudentProfile.id);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 33,
                  width: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF139CFF),
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Edit Profile',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF139CFF),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 6.0, horizontal: 120.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, WelcomeScreen.id);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF139CFF),
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Center(
                    child: Text(
                      'Log Out',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF139CFF),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35.0,
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
                      Navigator.pushNamed(context,Categories.id);
                    },
                    child: Icon(
                      Icons.list,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context,HomeScreen.id);
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
                      print('yes');
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
      ),
    );
  }
}
