// ignore: must_be_immutable
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuCustom extends StatelessWidget {
  final double mediaQueryWidth;
  final double? mediaQueryheight;
  final double widthImage;
  String? navigasi;
  String text;
  Image image;
  MenuCustom(
      {super.key,
      required this.mediaQueryWidth,
      this.mediaQueryheight,
      required this.image,
      required this.widthImage,
      this.navigasi,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mediaQueryWidth * 0.7,
      height: 200,
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Color(0xffF1F6F9),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 5,
          ),
          Image(
            image: image.image,
            width: widthImage,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(navigasi!);
            },
            child: Card(
              color: const Color(0xff8294C4),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              elevation: 12,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
