import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone_app/core/colors/colors.dart';
import 'package:netflix_clone_app/core/constants.dart';
import 'package:netflix_clone_app/presentation/home/widgets/backgroud_card.dart';
import 'package:netflix_clone_app/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_clone_app/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, index, _) {
        return SafeArea(
          child: Padding(
            padding: kTotalPadding,
            child: NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: const [
                      BackgroundCard(),
                      kHeight10,
                      MainTitleCard(title: 'Released in the Past Year'),
                      kHeight10,
                      MainTitleCard(title: 'Trending Now'),
                      kHeight10,
                      NumberTitleCard(),
                      kHeight10,
                      MainTitleCard(title: 'Tense Dramas'),
                      kHeight10,
                      MainTitleCard(title: 'South Indian Cenema'),
                    ],
                  ),
                  scrollNotifier.value
                      ? AnimatedContainer(
                          duration: const Duration(milliseconds: 1000),
                          width: double.infinity,
                          height: 90,
                          color: Colors.black.withOpacity(0.3),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                      'https://cdn-images-1.medium.com/max/1200/1*ty4NvNrGg4ReETxqU2N3Og.png',
                                      width: 70,
                                      height: 60),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.cast, size: 30),
                                    color: kWhiteColor,
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    color: Colors.blue,
                                  ),
                                  kWidth10,
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text('TV Shows', style: kHomeTitleText),
                                  Text('Movies', style: kHomeTitleText),
                                  Text('Categories', style: kHomeTitleText),
                                ],
                              ),
                            ],
                          ),
                        )
                      : kHeight10,
                ],
              ),
            ),
          ),
        );
      },
    ));
  }
}

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomButtonWidget({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(icon, color: kWhiteColor, size: 30),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
