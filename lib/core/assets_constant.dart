import 'package:flutter/cupertino.dart';

class AssetsConstant {
  static const balloning = "assets/balloning.png";
  static const buttonOne = "assets/button-one.png";
  static const hiking = "assets/hiking.png";
  static const mountain = "assets/mountain.jpeg";
  static const snorkling = "assets/snorkling.png";
  static const kayaking = "assets/kayaking.png";
  static const welcomeOne = "assets/welcome-one.png";
  static const welcomeTwo = "assets/welcome-two.png";
  static const welcomeThree = "assets/welcome-three.png";
}

class ImageList {
  String imageUrl;
  String text;
  ImageList({
    required this.imageUrl,
    required this.text,
  });
}

final welcomePageImageList = [
  ImageList(
    imageUrl: "assets/welcomeone.png",
    text: "",
  ),
  ImageList(
    imageUrl: "assets/welcometwo.png",
    text: '',
  ),
  ImageList(
    imageUrl: "assets/welcomethree.png",
    text: '',
  ),
];

final homePageImageList = [
  ImageList(imageUrl: "assets/kayaking.png", text: "Kayaking"),
  ImageList(imageUrl: "assets/hiking.png", text: "Hiking"),
  ImageList(imageUrl: "assets/balloning.png", text: "Balloning"),
  ImageList(imageUrl: "assets/snorkling.png", text: "Snorkling"),
];
