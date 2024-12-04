import 'package:flutter/material.dart';
import 'package:flutter_week_2/pages/register_page.dart';
import 'package:flutter_week_2/pages/widget/custom_text_field_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(

        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Lottie.asset('assets/lottie/lego.json'),
            Text(
              'Welcome!',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  letterSpacing: .5,
                  fontWeight: FontWeight.w500,
                  ),
                ),
            ),
            Text(
              'Happy Shopping All',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  letterSpacing: .5,
                  fontWeight: FontWeight.w400,
                  ),
                ),
            ),
            SizedBox(height: 12,),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: CustomTextFieldWidget(
                hintText: 'Login',
              )
            ),
            SizedBox(height: 8,),
            Container(
              width: double.infinity,
              height: 50,
              child: CustomTextFieldWidget(
                hintText: 'Password',
                
              ),
              
            ),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(
                context, 
                '/register'
                );
            }, child: const Text('Register'),),
          ],
        ),
      )
      
    );
  }
}