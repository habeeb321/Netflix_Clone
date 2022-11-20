import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/colors/colors.dart';
import 'package:netflix_clone_app/core/constants.dart';
import 'package:netflix_clone_app/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final List imageList = [
    'https://www.themoviedb.org/t/p/w220_and_h330_face/7WUHnWGx5OO145IRxPDUkQSh4C7.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/ekZobS8isE6mA53RAiGDG93hBxL.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: 'Downloads',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: kTotalPadding,
          child: ListView(
            children: [
              const SmartDownloads(),
              const Text('Introducing Downloads for you'),
              const Text(
                  'We will download a personalised selection of movies and shows for you, so there is always something to watch on your device.'),
              Container(
                width: size.width,
                height: size.width,
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: size.width * 0.4,
                    ),
                    DownloadsImageWidget(
                      imageList: imageList[0],
                      margin: const EdgeInsets.only(left: 110, bottom: 50),
                      angle: 20,
                      size: Size(size.width * 0.4, size.width * 0.58),
                    ),
                    DownloadsImageWidget(
                      imageList: imageList[1],
                      margin: const EdgeInsets.only(right: 110, bottom: 50),
                      angle: -20,
                      size: Size(size.width * 0.4, size.width * 0.58),
                    ),
                    DownloadsImageWidget(
                      imageList: imageList[2],
                      margin: const EdgeInsets.only(bottom: 19),
                      size: Size(size.width * 0.4, size.width * 0.67),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                color: kButtonColorBlue,
                onPressed: () {},
                child: const Text(
                  'Setup',
                  style: TextStyle(
                      color: kButtonColorWhite,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                color: kButtonColorWhite,
                onPressed: () {},
                child: const Text(
                  'See what you can download',
                  style: TextStyle(
                      color: kBlackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kWidth10,
        Text(
          'Smart Downloads',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: NetworkImage(
              imageList,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
