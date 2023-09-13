import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Sea.dart';

class SeaWidgit extends StatelessWidget {
  String? image_url;
  String? name;
  String? descreption;
  List? photos;

  SeaWidgit(this.image_url, this.name, this.descreption, this.photos);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
            decoration:BoxDecoration(
                image: DecorationImage(fit: BoxFit.cover,
                    image: NetworkImage(image_url!))),

            width: double.infinity,
            height: 373,
            child:
            Row(crossAxisAlignment:CrossAxisAlignment.start,
              children: [

              Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white),
              Spacer(),
              Icon(Icons.more_vert,color: Colors.white),



            ],

            )),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name ?? '',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                descreption ?? '',
                style: TextStyle(
                    fontSize: 16, color: Colors.black, wordSpacing: 6),
              ),
              SizedBox(height: 10),
              Text(
                "Picture",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Row(children: [
                for (int i = 0; i < 6; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: i == 5
                            ? BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(photos![6]),
                                    fit: BoxFit.cover))
                            : null,
                        width: 40,
                        height: 40,
                        child: i == 5
                            ? Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.black.withAlpha(70),
                                ),
                                child: Center(
                                  child: Text(
                                    '+${photos!.length - 6}',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )
                            : Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.black.withAlpha(70),
                                ),
                                child: Image.network(
                                  photos![i],
                                  fit: BoxFit.cover,
                                ),
                              )),
                  ),
              ]),
              TextButton(
                  onPressed: () {},
                  child: Row(children: [
                    Text(
                      "More in Bali",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ])),
            ],
          ),
        )
      ],
    );

    //...photos!.map((e)=>Image.network(e??'',width:500,height: 50)),
  }
}
