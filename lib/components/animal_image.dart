import 'package:flutter/material.dart';

class AnimalImage extends StatelessWidget {
  const AnimalImage({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
          decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
      )),
    );
  }
}
