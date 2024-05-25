import 'package:flutter/material.dart';
import 'package:portofolio/core/colors.dart';
import 'package:portofolio/core/space.dart';
import 'package:portofolio/core/text_style.dart';
import 'package:portofolio/login/demotext.dart';
import 'package:portofolio/login/main_button.dart';
import 'package:portofolio/login/page_signin.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({super.key});

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height,
              color: Color.fromARGB(255, 5, 96, 165),
              child: Image.asset(
                'assets/laut.jpg',
                height: height,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height / 3,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: gradient,
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'jumawa',
                          style: headline,
                        ),
                        TextSpan(
                          text: '.',
                          style: headlineDot,
                        ),
                      ]),
                    ),
                    SpaceVH(height: 20.0),
                    Text(
                      splashText,
                      textAlign: TextAlign.center,
                      style: headline2,
                    ),
                    Mainbutton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => PageSignIn()));
                      },
                      btnColor: blueButton,
                      text: 'Ayo Mulai',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
