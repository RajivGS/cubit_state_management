class AssetsConstant {
  static const balloning = "assets/balloning.png";
  static const buttonOne = "assets/button-one.png";
  static const hiking = "assets/hiking.png";
  static const mountain = "assets/mountain.png";
  static const snorkling = "assets/welcome-one.png";
  static const kayaking = "assets/kayaking.png";
  static const welcomeOne = "assets/welcome-one.png";
  static const welcomeTwo = "assets/welcome-two.png";
  static const welcomeThree = "assets/welcome-three.png";
}

class ImageList {
  String imageUrl;
  ImageList({
    required this.imageUrl,
  });
}

final imageList = [
  ImageList(
    imageUrl: "assets/welcomeone.png",
  ),
  ImageList(
    imageUrl: "assets/welcometwo.png",
  ),
  ImageList(
    imageUrl: "assets/welcomethree.png",
  ),
];
