import 'package:flutter/material.dart';

class intro_page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'assets/3.gif',
            width: 200,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'صفحه سوم',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
