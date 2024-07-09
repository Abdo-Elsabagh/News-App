import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:insights_news/core/app_colors.dart';
import 'package:insights_news/core/app_local_storage.dart';
import 'package:insights_news/feature/home/home_view.dart';

String? imagePath;
String name = '';

class UploadViem extends StatefulWidget {
  const UploadViem({super.key});

  @override
  State<UploadViem> createState() => _UploadViemState();
}

class _UploadViemState extends State<UploadViem> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppLocal.getChached(AppLocal.imagekey).then((value) {
      setState(() {
        imagePath = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                if (imagePath != null && name.isNotEmpty) {
                  AppLocal.cacheData(AppLocal.namekey, name);
                  AppLocal.cacheBool(AppLocal.isUpload, true);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomeView(),
                  ));
                } else if (imagePath == null && name.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: Colors.red,
                      content:
                          Text('Please Upload Image and Enter Your Name')));
                } else if (imagePath == null) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text('Please Upload Image')));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text('Please Enter Your Name')));
                }
              },
              child: Text(
                'Done',
                style: TextStyle(color: AppColors.lomanda),
              ))
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 60,
                    backgroundColor: AppColors.grey,
                    backgroundImage: (imagePath != null)
                        ? FileImage(File(imagePath!)) as ImageProvider
                        : const AssetImage('assets/user.png')),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    getImagrFormCamera();
                  },
                  child: Container(
                    height: 40,
                    width: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.containerBG),
                    child: Text(
                      'Uplaod for camera',
                      style: TextStyle(
                          color: AppColors.lomanda,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    getImagrFormGallery();
                  },
                  child: Container(
                    height: 40,
                    width: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.containerBG),
                    child: Text(
                      'Uplaod for Gallery',
                      style: TextStyle(
                          color: AppColors.lomanda,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Divider(
                    color: AppColors.lomanda,
                    height: 40,
                  ),
                ),
                TextFormField(
                  cursorColor: AppColors.lomanda,
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  style: TextStyle(color: AppColors.white),
                  decoration: InputDecoration(
                      hintText: 'Enter Your Name',
                      hintStyle: TextStyle(color: AppColors.grey),
                      filled: true,
                      fillColor: AppColors.containerBG),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  getImagrFormCamera() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      AppLocal.cacheData(AppLocal.imagekey, pickedImage.path);
      setState(() {
        imagePath = pickedImage.path;
      });
    }
  }

  getImagrFormGallery() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      AppLocal.cacheData(AppLocal.imagekey, pickedImage.path);
      setState(() {
        imagePath = pickedImage.path;
      });
    }
  }
}
