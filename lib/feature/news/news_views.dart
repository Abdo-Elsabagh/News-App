import 'package:flutter/material.dart';
import 'package:insights_news/core/app_colors.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            )
          ],
        ),
      )),
    );
  }
}
