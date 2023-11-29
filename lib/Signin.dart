import 'package:exam/signfooter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
             height: 800,
            // width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/login.png',
                    ),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Image.asset(
                  'assets/riot.png',
                  width: 200,
                  height: 200,
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text(
                      "Welcome!",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white70),
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white70),
                      labelText: 'Username',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white70),
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white70),
                      labelText: 'Password',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SignInFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
