import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Register",
                  style: GoogleFonts.roboto(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Create your account for Happy Shopping",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 60),

                
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xff00623B), 
                    ),
                    labelText: "Full Name",
                    labelStyle: TextStyle(color: Color(0xff00623B)), 
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00623B)), 
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00623B)), 
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Iconsax.sms5,
                      color: Color(0xff00623B), 
                    ),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Color(0xff00623B)), 
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00623B)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00623B)), 
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true, 
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Iconsax.lock5,
                      color: Color(0xff00623B), 
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Color(0xff00623B)), 
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00623B)), 
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00623B)), 
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Iconsax.lock4,
                      color: Color(0xff00623B), 
                    ),
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(color: Color(0xff00623B)), 
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00623B)), 
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00623B)), 
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/registerButton'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff00623B), 
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Register",
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, '/login'),
                      child: Text(
                        " Login",
                        style: GoogleFonts.roboto(
                          color: Color(0xff00623B),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
