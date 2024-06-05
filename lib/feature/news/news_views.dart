import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:insights_news/core/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
            body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Sayed',
                        style: TextStyle(color: AppColors.white, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Have a nice day',
                        style: TextStyle(
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/image 2.jpg'),
                      radius: 20,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CarouselSlider.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/image 2.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        _pageIndex = index;
                      });
                    },
                    height: 150,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: true,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  )),
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                  controller:
                      PageController(initialPage: _pageIndex), // PageController
                  count: 5,
                  effect: ScrollingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor:
                          AppColors.lomanda), // your preferred effect
                  onDotClicked: (index) {}),
              const SizedBox(
                height: 10,
              ),
              ButtonsTabBar(
                // Customize the appearance and behavior of the tab bar
                backgroundColor: AppColors.lomanda,
                unselectedBackgroundColor: const Color(0xff30312D),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                borderWidth: 2, 
                borderColor: Colors.black,
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                // Add your tabs here
                tabs: const [
                  Tab(text: 'Science'),
                  Tab(text: 'Entertainment'),
                  Tab(text: 'Sports'),
                  Tab(text: 'Business'),
                ],
              ),
              const Expanded(
                child: TabBarView(children: []),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
