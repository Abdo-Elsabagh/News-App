import 'package:flutter/material.dart';
import 'package:insights_news/core/app_colors.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.sacffoldBG,
            centerTitle: true,
            title: const Text(
              'Find Your News',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              TextField(
                style: TextStyle(color: AppColors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xff4F4F4F),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: AppColors.grey)),
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.white,
                    ),
                    label: const Text('Search for news'),
                    labelStyle:
                        TextStyle(fontSize: 18, color: AppColors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 2, right: 10, bottom: 10),
                child: Text(
                  'Total Results : 10',
                  style: TextStyle(color: AppColors.white, fontSize: 16),
                ),
              ),
              Expanded(
                  child: ListView.separated(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        style:
                                            TextStyle(color: AppColors.white),
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
                        return const SizedBox(
                          height: 10,
                        );
                      },
                      itemCount: 4))
            ],
          )),
    );
  }
}
