import 'package:flutter/material.dart';
import 'package:portofolio/core/colors.dart';
import 'package:portofolio/core/space.dart';
import 'package:portofolio/core/text_style.dart';
import 'package:portofolio/login/main_button.dart';
import 'package:portofolio/login/text_fild.dart';

class PageSignIn extends StatefulWidget {
  const PageSignIn({super.key});

  @override
  State<PageSignIn> createState() => _PageSignInState();
}

class _PageSignInState extends State<PageSignIn> {
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackBG,
      body: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SpaceVH(height: 50.0),
              Text(
                'Selamat Datang Kembali!',
                style: headline1,
              ),
              SpaceVH(height: 10.0),
              Text(
                'Silakan masuk ke akun Anda',
                style: headline3,
              ),
              SpaceVH(height: 60.0),
              textFild(
                controller: userName,
                image: 'user.svg',
                hintTxt: 'Username',
              ),
              textFild(
                controller: userPass,
                image: 'hide.svg',
                hintTxt: 'Password',
              ),
              SpaceVH(height: 10.0),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lupa Password?',
                      style: headline3,
                    ),
                  ),
                ),
              ),
              SpaceVH(height: 100.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Mainbutton(
                      onTap: () {},
                      text: 'Sign in',
                      btnColor: blueButton,
                    ),
                    SpaceVH(height: 20.0),
                    Mainbutton(
                      onTap: () {},
                      text: 'Sign in dengan google',
                      image: 'google.png',
                      btnColor: white,
                      txtColor: blackBG,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
