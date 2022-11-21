import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  final String image;
  const VideoWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(image, fit: BoxFit.cover),
        ),
        Positioned(
          right: 5,
          bottom: 5,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: kBlackColor.withOpacity(0.5),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off,
                color: kWhiteColor,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
