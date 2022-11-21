import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/constants.dart';

class MainCards extends StatelessWidget {
  const MainCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 130,
        height: 200,
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://www.themoviedb.org/t/p/w220_and_h330_face/1X4h40fcB4WWUmIBK0auT4zRBAV.jpg',
            ),
          ),
          borderRadius: kRadius,
        ),
      ),
    );
  }
}
