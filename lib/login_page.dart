import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8ECD1),
      body: SafeArea(
        child: SingleChildScrollView(child: _grtColumn()),
      ),
    );
  }

  Widget _grtColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 30),
        _getRow(),
        Image(
          image: AssetImage('images/welcome.png'),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: Color(0xFF85586F),
              width: 2.0,
            ),
            primary: Color(0xFF85586F),
            minimumSize: Size(150, 40),
          ),
          onPressed: () {},
          child: Text('ورود به حساب'),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF85586F),
            minimumSize: Size(150, 40),
          ),
          onPressed: () {},
          child: Text('ثبت نام'),
        )
      ],
    );
  }

  Widget _getRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'خوش آمدید',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF85586F),
          ),
        ),
        SizedBox(width: 20),
        Icon(
          Icons.logout,
          color: Color(0xFF85586F),
          size: 24.0,
        )
      ],
    );
  }
}
