import 'package:flutter/material.dart';

Widget activity() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding:
            const EdgeInsets.only(top: 80.0, left: 16.0), // Adjust left padding
        child: Text(
          'Activity',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    ],
  );
}
