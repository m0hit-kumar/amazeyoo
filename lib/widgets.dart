import 'package:amazeyoo/detail.dart';
import 'package:amazeyoo/links.dart';
import 'package:flutter/material.dart';

Widget imageSliders(BuildContext context, int index) => Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AboutScreen(url: imglist[index])));
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 10,
                          width: 150,
                          height: 150,
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF986E3C),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        Image.network(
                          imglist[index],
                          fit: BoxFit.cover,
                          width: 150,
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(subs[index],
                  style: const TextStyle(
                    color: Color(0xFF9A9085),
                    fontSize: 14,
                    fontFamily: "San Francisco",
                  )),
            ),
            Text(titles[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: "San Francisco",
                )),
          ],
        ),
      ),
    );
