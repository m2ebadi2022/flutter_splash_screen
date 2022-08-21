import 'dart:html';

import 'package:flutter/material.dart';

class intro_page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'assets/1.gif',
            fit: BoxFit.contain,
            width: 200,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'صفحه اول',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
