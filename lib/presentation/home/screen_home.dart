import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/constants.dart';
import 'package:netflix_clone_app/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_clone_app/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kTotalPadding,
          child: SingleChildScrollView(
            child: Column(
              children: const [
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
          ),
        ),
      ),
    );
  }
}
