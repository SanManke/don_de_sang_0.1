import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.redAccent,
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Stack(
                children: [
                  ClipPath(
                    clipper: DrawClip(),
                    child: Container(
                      height: 560,
                      width: size.width - 50,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    right: 5,
                    child: Container(
                      child: Image.asset(
                        "assets/blood_icon.jpg",
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 110,
                    child: Text(
                      "Login",
                      style: GoogleFonts.montserrat(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            color: Colors.grey.shade300,
                            offset: Offset(3.0, 3.0),
                            blurRadius: 3.0,
                          ),
                          Shadow(
                            color: Colors.white,
                            offset: Offset(-3.0, 3.0),
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  input("Email", false),
                  input("Password", true),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget input(String name, bool pass)
{
  return Positioned(
    left: 10,
    right: 10,
    top: pass? 290 : 210,
    child: Material(
      elevation: 10,
      child: Container(
        width: 320,
        child: TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.red.withOpacity(0.2),
            filled: true,
            labelText: name,
            labelStyle: GoogleFonts.montserrat(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            prefixIcon: pass? Icon(Icons.lock_outline_sharp, color: Colors.redAccent,) : Icon(Icons.email, color: Colors.redAccent,),
          ),
        ),
      ),
    ),
  );
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 50);
    path.quadraticBezierTo(0, 0, 50, 30);
    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, size.height - 50);
    path.quadraticBezierTo(
        size.width, size.height, size.width - 50, size.height - 30);
    path.lineTo(0, size.height * 2 / 3);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
