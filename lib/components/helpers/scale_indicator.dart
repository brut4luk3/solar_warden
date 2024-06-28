import 'package:flutter/material.dart';

Widget getHorizontalScaleIndicator(String? classType) {
  if (classType == null) return Container();

  return Row(
    children: [
      Container(
        height: 40,
        width: 40,
        color: Colors.yellow[100],
        child: const Center(
          child: Text(
            'R1',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        height: 40,
        width: 40,
        color: Colors.yellow,
        child: const Center(
          child: Text(
            'R2',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        height: 40,
        width: 40,
        color: Colors.orange,
        child: const Center(
          child: Text(
            'R3',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        height: 40,
        width: 40,
        color: Colors.red,
        child: const Center(
          child: Text(
            'R4',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        height: 40,
        width: 40,
        color: Colors.red[900],
        child: const Center(
          child: Text(
            'R5',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}