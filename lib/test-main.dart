import 'package:flutter/material.dart';
import 'package:untitled2/sea-data.dart';

import 'package:untitled2/sea-widgit.dart';

import 'Sea.dart';

class TestMain extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            ...data1.map((e)=>SeaWidgit(e['image_url'],e['name'],e['descreption'],e['photos']))
          ] ,
        ),
      ),
    );
  }
}