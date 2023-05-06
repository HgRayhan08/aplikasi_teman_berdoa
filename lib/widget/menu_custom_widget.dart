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
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 3,
              offset: const Offset(5, 6))
        ],
        color: const Color(0xff6096B4),
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
              color: const Color(0xff146C94),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              elevation: 12,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
