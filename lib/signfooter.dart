import 'package:exam/bottombar.dart';
import 'package:exam/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInFooter extends StatelessWidget {
  const SignInFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                width: 250,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () => Get.to(() => BottomBar()),
                  child: Text(
                    "Login",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.deepPurple.shade200,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Forget password?",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Don't have any?",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4,),
              SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () => Get.to(() => SearchLOC()),
                  child: Text(
                    "Create",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.deepPurple.shade200,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
