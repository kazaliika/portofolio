import 'package:flutter/material.dart';
import 'package:portofolio/core/colors.dart';
import 'package:portofolio/core/space.dart';
import 'package:portofolio/core/text_style.dart';
import 'package:portofolio/login/text_field.dart';

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
              textField(
                controller: userName,
                image: 'user.svg',
                hintTxt: 'Username',
              ),
              textField(
                controller: userPass,
                image: 'hide.svg',
                hintTxt: 'Password',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
