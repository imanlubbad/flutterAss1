import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/test-main.dart';

void main() {

  runApp(MaterialApp(home: TestMain(),debugShowCheckedModeBanner: false,));
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  // ));//لاخفاء ستيتس بار بس م عرفت اكمل واشيل الابيض الي ظهر هههههههههه
}

class PostWidget extends StatelessWidget {
  String imageUrl;
  String name;
  String descreption;

  PostWidget(this.imageUrl, this.name, this.descreption);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [Image.network(imageUrl), Text(name), Text(descreption)],
    );
  }
}

