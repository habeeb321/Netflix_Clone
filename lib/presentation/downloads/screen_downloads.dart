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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: 'Downloads',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Row(
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
              ),
              const Text('Introducing Downloads for you'),
              const Text(
                  'We will download a personalised selection of movies and shows for you, so there is always something to watch on your device.'),
              Container(
                width: size.width,
                height: size.height,
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: size.width * 0.4,
                    ),
                    Container(
                      width: size.width * 0.3,
                      height: size.height * 0.5,
                      color: Colors.black,
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
