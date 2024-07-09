import 'package:flutter/material.dart';
import 'package:insights_news/core/app_colors.dart';
import 'package:insights_news/core/app_local_storage.dart';
import 'package:insights_news/feature/home/home_view.dart';
import 'package:insights_news/feature/upload_viem.dart';

class SplachView extends StatefulWidget {
  const SplachView({super.key});

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      AppLocal.getBool(AppLocal.isUpload).then((value) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) =>
                value ? const HomeView() : const UploadViem()));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.sacffoldBG,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            width: 250,
          ),
          Text('Insights News',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white)),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Stay Informed, Anytime, Anywhere',
            style: TextStyle(color: AppColors.grey, fontSize: 14),
          )
        ],
      )),
    );
  }
}
