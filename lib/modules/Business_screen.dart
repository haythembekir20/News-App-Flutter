// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Business Screen',
        style:TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        
      ),
    );
  }
}