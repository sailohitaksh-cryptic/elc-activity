import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'student_profile_view.dart';

class StudentProfile extends StatefulWidget {
  static String id = 'student_profile_screen';

  @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
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
                ]
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top:20.0),
              child:Icon(
                Icons.account_circle_outlined,
                color: Color(0xFF139CFF),
                size: 200.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 100.0),
              child: GestureDetector(
                onTap: (){
                  //Navigator.pushNamed(context, HomeScreen.id);
                  print('yes');

                },
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 50,
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
                      'Edit Profile Photo',
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
              padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 16.0),
              child: TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },

                cursorColor: Colors.deepOrangeAccent,
                cursorHeight: 25.0,
                style: TextStyle(color: Color(0xFF139CFF)),
                decoration: InputDecoration(

                  hintText: 'Change Username',
                  hintStyle: TextStyle(fontSize: 20.0, color: Color(0xFF139CFF)),

                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xFF139CFF), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xFF139CFF), width: 6.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 16.0),
              child: TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },

                cursorColor: Colors.deepOrangeAccent,
                cursorHeight: 25.0,
                style: TextStyle(color: Color(0xFF139CFF)),
                decoration: InputDecoration(

                  hintText: 'Change Email',
                  hintStyle: TextStyle(fontSize: 20.0, color: Color(0xFF139CFF)),

                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xFF139CFF), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xFF139CFF), width: 6.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 16.0),
              child: TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },

                cursorColor: Colors.deepOrangeAccent,
                cursorHeight: 25.0,
                style: TextStyle(color: Color(0xFF139CFF)),
                decoration: InputDecoration(

                  hintText: 'Change Phone',
                  hintStyle: TextStyle(fontSize: 20.0, color: Color(0xFF139CFF)),

                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xFF139CFF), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xFF139CFF), width: 6.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 16.0),
              child: TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },

                cursorColor: Colors.deepOrangeAccent,
                cursorHeight: 25.0,
                style: TextStyle(color: Color(0xFF139CFF)),
                decoration: InputDecoration(

                  hintText: 'Change Password',
                  hintStyle: TextStyle(fontSize: 20.0, color: Color(0xFF139CFF)),

                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xFF139CFF), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xFF139CFF), width: 6.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 100.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, StudentProfileView.id);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 50,
                  width: 30,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color(0xFF56E3D8),
                          Color(0xFF139CFF),
                        ]
                    ),
                    border: Border.all(
                      color: Color(0xFF139CFF),
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),

                  ),
                  child: Center(
                    child: Text(
                      'Save Changes',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
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
      ),
    );
  }
}
