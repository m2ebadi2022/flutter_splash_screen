import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/home_page.dart';
import 'package:flutter_splash_screen/intro_screens/intro_screen1.dart';
import 'package:flutter_splash_screen/intro_screens/intro_screen2.dart';
import 'package:flutter_splash_screen/intro_screens/intro_screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            controller: _controller,
            children: [
              intro_page1(),
              intro_page2(),
              intro_page3(),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //skip
                  GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                      },
                      child: Text('رد کردن')),
                  SmoothPageIndicator(controller: _controller, count: 3),

                  //next
                  onLastPage
                      ? GestureDetector(
                          onTap: (() {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return HomePage();
                              }),
                            );
                          }),
                          child: Text('اتمام'),
                        )
                      : GestureDetector(
                          onTap: (() {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          }),
                          child: Text('بعدی'),
                        ),
                ],
              )),
        ],
      ),
    );
  }
}
