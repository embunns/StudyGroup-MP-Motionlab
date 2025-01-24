import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatelessWidget {
  final RegisterController controller = Get.put(RegisterController());

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
                const SizedBox(height: 10),
                Text(
                  "Create your account for Happy Shopping",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 60),

                // Full Name Field
                TextField(
                  controller: controller.fullNameController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person, color: Color(0xff00623B)),
                    labelText: "Full Name",
                    labelStyle: const TextStyle(color: Color(0xff00623B)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff00623B)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff00623B)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Email Field
                TextField(
                  controller: controller.emailController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.sms5, color: Color(0xff00623B)),
                    labelText: "Email",
                    labelStyle: const TextStyle(color: Color(0xff00623B)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff00623B)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff00623B)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Password Field
                TextField(
                  controller: controller.passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.lock5, color: Color(0xff00623B)),
                    labelText: "Password",
                    labelStyle: const TextStyle(color: Color(0xff00623B)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff00623B)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff00623B)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Confirm Password Field
                TextField(
                  controller: controller.confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.lock4, color: Color(0xff00623B)),
                    labelText: "Confirm Password",
                    labelStyle: const TextStyle(color: Color(0xff00623B)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff00623B)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff00623B)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Register Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: controller.register,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff00623B),
                      padding: const EdgeInsets.symmetric(vertical: 15),
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
                const SizedBox(height: 10),

                // Login Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: GoogleFonts.roboto(fontSize: 14),
                    ),
                    InkWell(
                      onTap: () => Get.toNamed('/login'),
                      child: Text(
                        " Login",
                        style: GoogleFonts.roboto(
                          color: const Color(0xff00623B),
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
