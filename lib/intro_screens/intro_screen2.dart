import 'package:flutter/material.dart';

class intro_page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'assets/2.gif',
            width: 200,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'صفحه دوم',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
