import 'package:flutter/material.dart';
import 'package:insights_news/core/app_colors.dart';

class NewsListViewWidget extends StatelessWidget {
  const NewsListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              decoration: BoxDecoration(
                  color: AppColors.containerBG,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/image 2.jpg',
                      width: 160,
                      height: 100, 
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Man City stay perfect despite Rodri red against Forest',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset('assets/read.png'),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'READ',
                            style: TextStyle(color: AppColors.white),
                          )
                        ],
                      )
                    ],
                  ))
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 5),
    );
  }
}
