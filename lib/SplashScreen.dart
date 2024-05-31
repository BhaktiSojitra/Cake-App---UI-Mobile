import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _selectedImageIndex = 0;

  void _updateSelectedImageIndex(int index) {
    setState(() {
      _selectedImageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //print("bulid function called");
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ClipPath(
              clipper: CustomClipPath(),
              child: Stack(
                children: [
                  Container(
                    child: Center(
                      child: _selectedImageIndex == 0
                          ? Image.asset(
                              "images/cake1.jpg",
                              width: double.infinity,
                              fit: BoxFit.cover,
                            )
                          : (_selectedImageIndex == 1
                              ? Image.asset(
                                  "images/cake2.jpg",
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                )
                              : Image.asset(
                                  "images/cake3.jpg",
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                )),
                    ),
                    height: MediaQuery.of(context).size.height * 0.6,
                  ),
                  Container(
                    color: Color(0xFFFF6961).withOpacity(0.2),
                    height: MediaQuery.of(context).size.height * 0.6,
                  ),
                ],
              ),
            ),
            Text(
              "Get Your",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dream ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(width: 2),
                  Text(
                    "Cake",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFF6961)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Text(
                    "Not here for pretty pictures,but",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "here to serve you delicious bakes",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(149, 25, 0, 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _updateSelectedImageIndex(0);
                    },
                    child: Container(
                      height: 11,
                      width: 11,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _selectedImageIndex == 0
                            ? Color(0xFFFF6961)
                            : Colors.grey.shade400,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      _updateSelectedImageIndex(1);
                    },
                    child: Container(
                      height: 11,
                      width: 11,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _selectedImageIndex == 1
                            ? Color(0xFFFF6961)
                            : Colors.grey.shade400,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      _updateSelectedImageIndex(2);
                    },
                    child: Container(
                      height: 11,
                      width: 11,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _selectedImageIndex == 2
                            ? Color(0xFFFF6961)
                            : Colors.grey.shade400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 25, 0, 0),
              child: SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    //pushreplacementnamed so it can not goes to back to splash screen
                    Navigator.pushReplacementNamed(context, 'HomePage');
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFFF6961)),
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 20),
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

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    //(0,0) 1.point
    path.lineTo(0, h); //2. point
    path.quadraticBezierTo(
      w * 0.5,
      h - 80,
      w,
      h,
    ); //4. point
    path.lineTo(w, 0); //5. point
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}