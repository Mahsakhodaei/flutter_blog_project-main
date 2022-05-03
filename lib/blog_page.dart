import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8ECD1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF85586F),
        iconTheme: IconThemeData(color: Color(0xFFF8ECD1)),
        title: Text('VIP اخبار و سیگنال های '),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image(
                image: AssetImage('images/s.png'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'برای 14 آبانsafemoon : سیگنال خرید',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF85586F),
              ),
            ),
            SizedBox(height: 10),
            _getRow(),
          ],
        )),
      ),
    );
  }

  Widget _getRow() {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Text(
              'فروش روی : 100،000',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.red),
            ),
          ),
        ),
        Icon(
          Icons.sell,
          color: Color(0xFF85586F),
          size: 24.0,
        ),
        Expanded(
          child: Center(
            child: Text(
              'خرید روی : 34،000',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.green),
            ),
          ),
        ),
        Icon(
          Icons.price_check,
          color: Color(0xFF85586F),
          size: 24.0,
        ),
      ],
    );
  }
}
