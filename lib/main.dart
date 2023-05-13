

import 'package:flutter/material.dart';
import 'package:photo_sizes/screen/home_Screen.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=> Home_Screen(),
      },
    )
  );
}