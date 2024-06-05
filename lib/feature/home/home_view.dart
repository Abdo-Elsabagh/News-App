import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insights_news/core/app_colors.dart';
import 'package:insights_news/feature/news/news_views.dart';
import 'package:insights_news/feature/notifications/notification_view.dart';
import 'package:insights_news/feature/profile/profile_viem.dart';
import 'package:insights_news/feature/search/search_views.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  int currentIndex = 0;
  List<Widget> screens = [
    const NewsView(),
    const SearchView(),
    const NotificationView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          // selectedItemColor: AppColors.lomanda,
          // unselectedItemColor: AppColors.grey,
          backgroundColor: AppColors.sacffoldBG,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/home.svg'),
                label: 'Home',
                activeIcon: SvgPicture.asset('assets/home.svg',
                    colorFilter:
                        ColorFilter.mode(AppColors.lomanda, BlendMode.srcIn))),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/Group.svg'),
                label: 'Home',
                activeIcon: SvgPicture.asset(
                  'assets/Group.svg',
                  colorFilter:
                      ColorFilter.mode(AppColors.lomanda, BlendMode.srcIn),
                )),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/Notification.svg'),
                label: 'Notification',  
                activeIcon: SvgPicture.asset(
                  'assets/Notification.svg',
                  colorFilter:
                      ColorFilter.mode(AppColors.lomanda, BlendMode.srcIn),
                )),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/Vector.svg'),
                label: 'Vector',
                activeIcon: SvgPicture.asset(
                  'assets/Vector.svg',
                  colorFilter:
                      ColorFilter.mode(AppColors.lomanda, BlendMode.srcIn),
                )),
          ]),
    );
  }
}
