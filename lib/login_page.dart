import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
                        width: 60,
                        height: 60,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
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
