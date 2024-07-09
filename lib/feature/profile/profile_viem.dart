import 'dart:io';

import 'package:flutter/material.dart';
import 'package:insights_news/core/app_colors.dart';
import 'package:insights_news/core/app_local_storage.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: AppLocal.getChached(AppLocal.imagekey),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 58,
                      backgroundImage: FileImage(File(snapshot.data!)),
                    ),
                  );
                } else {
                  return CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundColor: AppColors.grey,
                      radius: 20,
                      backgroundImage: const AssetImage('assets/user.png'),
                    ),
                  );
                }
              },
            ),
            Divider(
              height: 40,
              color: AppColors.lomanda,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff30312D)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.account_circle,
                        size: 40,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      FutureBuilder(
                        future: AppLocal.getChached(AppLocal.namekey),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              '${snapshot.data}',
                              style: TextStyle(
                                  color: AppColors.lomanda,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            );
                          } else {
                            return Text(
                              'Hello ',
                              style: TextStyle(
                                  color: AppColors.lomanda,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            );
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
