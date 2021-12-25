import 'package:flutter/material.dart';

class CustomButtonPlay extends StatelessWidget {
  // final int index;
  // final String imageUrl;
  const CustomButtonPlay({
    // required this.imageUrl,
    // required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/icons/play.png'),
        ),
      ),
    );
  }
}
