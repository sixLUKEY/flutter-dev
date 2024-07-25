import 'package:flutter/material.dart';
import 'package:for_web_devs/styles.dart';

final container = Container(
  width: 320,
  height: 240,
  color: Colors.grey[300],
  child: Stack(
    children: [
      Positioned(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.red[400],
          ),
          child: Text(
            'Lorem Ipsum',
            style: bold24Roboto,
          ),
        ),
      ),
    ],
  ),
);
