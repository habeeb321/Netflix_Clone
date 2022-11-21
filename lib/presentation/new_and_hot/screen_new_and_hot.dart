import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/colors/colors.dart';
import 'package:netflix_clone_app/core/constants.dart';
import 'package:netflix_clone_app/presentation/new_and_hot/widgets/coming_soon_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            actions: [
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
            bottom: TabBar(
              isScrollable: true,
              labelColor: kBlackColor,
              unselectedLabelColor: kWhiteColor,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              indicator:
                  BoxDecoration(color: kWhiteColor, borderRadius: kRadius30),
              tabs: const [
                Tab(text: '🍿 Coming Soon'),
                Tab(text: "👀 Everyone's Watching"),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: TabBarView(
            children: [
              buildComingSoon(),
              buildEveryOnesWatching(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildComingSoon() {
    return ListView.builder(
      itemBuilder: (context, index) => const ComingSoonWidget(),
      itemCount: 10,
    );
  }

  Widget buildEveryOnesWatching() {
    return const SizedBox();
  }
}
