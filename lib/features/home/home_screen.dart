import 'package:flutter/material.dart';
import 'package:kheloo/features/utils/colors.dart';
import 'package:kheloo/features/utils/extensions.dart';
import 'package:kheloo/features/utils/styles.dart';
import 'package:kheloo/features/widgets/bottom_bar_widget.dart';
import 'package:kheloo/features/widgets/lang_dialog.dart';
import 'package:kheloo/features/widgets/my_appbar_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomeScreen extends StatelessWidget {
  static const String route = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const MyAppbarWidget(),
              SizedBox(
                height: 200,
                child: PageView(
                  controller: pageController,
                  children: List.generate(
                    bannerList.length,
                    (index) => Image.asset(
                      bannerList[index].asAssetImg(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                child: SmoothPageIndicator(
                  controller: pageController,
                  // PageController
                  count: bannerList.length,
                  effect: const SwapEffect(
                    dotHeight: 5,
                    dotWidth: 20,
                    activeDotColor: Colors.orange,
                    dotColor: Colors.grey,
                  ),
                ),
              ),
              _LangWidget(),
              const SizedBox(height: 10),
              _GamesWidget()
            ],
          ),
        ),
        bottomNavigationBar: const BottomBarWidget(),
      ),
    );
  }
}

class _GamesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'games.png'.asAssetImg(),
          height: 60,
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorPrimary,
                ),
                height: 40,
                width: 7,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  'Most Popular(15)',
                  style: tsS18W600,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                decoration: BoxDecoration(
                    color: colorPrimary,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'Hide',
                  style: tsS18W400,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        GridView.builder(
          padding: const EdgeInsets.all(15),
          shrinkWrap: true,
          itemCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 2),
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('banner1.jpg'.asAssetImg()),
                    fit: BoxFit.cover),
                border: Border.all(color: Colors.amberAccent, width: 2),
              ),
            );
          },
        )
      ],
    );
  }
}

class _LangWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        border: Border(
            top: BorderSide(color: Colors.amberAccent, width: 4),
            bottom: BorderSide(color: Colors.amberAccent, width: 4)),
        color: Colors.purple,
      ),
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _langList.length,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  _langList[index],
                  style: tsS16W400,
                ),
              ),
            ),
          ),
          InkWell(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.more_horiz,
                color: Colors.amberAccent,
              ),
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => const LangDialog());
            },
          ),
        ],
      ),
    );
  }
}

List<String> bannerList = ["banner1.jpg", "banner2.jpg"];

List<String> _langList = [
  'English',
  'Hindi',
  'Italin',
  'Malayalam',
  'Latin',
];
