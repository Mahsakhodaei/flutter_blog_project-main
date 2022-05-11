import 'package:flutter/material.dart';
import 'package:flutter_blog_project/custom_widget/post_widget.dart';

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
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  getBlogPost(imageName: 'a.png', title: 'سیگنال خرید 14 آبان'),
                  getBlogPost(imageName: 'c.png', title: 'سیگنال خرید 16 آبان'),
                  getBlogPost(imageName: 'r.png', title: 'سیگنال خرید 17 آبان'),
                  getBlogPost(imageName: 's.png', title: 'سیگنال خرید 20 آبان'),
                  SizedBox(height: 20),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Color(0xFFF8ECD1),
                      minimumSize: Size(150, 40),
                      backgroundColor: Color(0xFF85586F),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('خروج از حساب'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
