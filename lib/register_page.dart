import 'package:flutter/material.dart';
import 'package:flutter_blog_project/blog_page.dart';
import 'package:flutter_blog_project/password_recovery.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  void navigateToBlogPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8ECD1),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  ' خوش آمدید VIPبه اپلیکیشن سیگنال',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF85586F),
                  ),
                ),
                Image(
                  image: AssetImage('images/w.png'),
                ),
                OutlinedButton(
                  onPressed: () {
                    navigateToBlogPage(context, BlogScreen());
                  },
                  child: Text('ورود به حساب'),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Color(0xFF85586F),
                      width: 2,
                    ),
                    primary: Color(0xFF85586F),
                    minimumSize: Size(150, 40),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('ثبت نام'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF85586F),
                    minimumSize: Size(150, 40),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    navigateToBlogPage(context, PasswordRecoveryPage());
                  },
                  child: Text('فراموشی رمز عبور؟'),
                  style: TextButton.styleFrom(
                    primary: Color(0xFF85586F),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
