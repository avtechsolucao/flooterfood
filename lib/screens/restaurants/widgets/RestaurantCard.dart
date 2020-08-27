import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  String name;
  String uuid;
  String image;
  String contact;

  RestaurantCard({this.contact, this.image, this.name, this.uuid});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('name');
        Navigator.pushNamed(context, '/foods');
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 2, top: 2, left: 1, right: 1),
        child: Card(
          elevation: 2.5,
          child: Container(
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[200]),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 80,
                      height: 80,
                      child: ClipOval(
                        //child: Image.asset('assets/images/IconeFlutterFood.png'),
                        child: CachedNetworkImage(
                          imageUrl: image != ''
                              ? image
                              : 'https://academy.especializati.com.br/storage/courses/curso-flutterfood.png',
                          placeholder: (context, url) => Container(
                            height: 80,
                            width: 80,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          errorWidget: (context, url, error) => Center(
                            child: Icon(Icons.error),
                          ),
                        ),
                      ),
                    ),
                    VerticalDivider(color: Colors.black),
                    Expanded(
                        child: Text(
                      name,
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
