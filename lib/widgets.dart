import 'package:amazeyoo/detail.dart';
import 'package:amazeyoo/links.dart';
import 'package:flutter/material.dart';

Widget imageSliders(
  BuildContext context,
  int index, {
  required double? currentPageValue,
}) {
  // print(index);
  // print("dcssssssssssssssssssssss");

  // print(currentPageValue);
  return Padding(
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
          Column(
            children: [
              SizedBox(
                // color: Colors.red,
                height: 180,
                width: 180,
                child: Stack(
                  children: [
                    if (index == currentPageValue?.floor())
                      Positioned(
                        top: 10,
                        left: 10,
                        width: 170,
                        height: 170,
                        child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFF986E3C).withOpacity(0.4),
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      child: Image.network(
                        imglist[index],
                        fit: BoxFit.cover,
                        width: 170,
                        height: 170,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (index == currentPageValue?.floor())
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(subs[index],
                  style: const TextStyle(
                    color: Color(0xFF9A9085),
                    fontSize: 14,
                    fontFamily: "San Francisco",
                  )),
            ),
          if (index == currentPageValue?.floor())
            Text(titles[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  fontFamily: "San Francisco",
                )),
        ],
      ),
    ),
  );
}
