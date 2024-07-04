import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:insights_news/core/app_colors.dart';

String? imagePath;

class UploadViem extends StatefulWidget {
  const UploadViem({super.key});

  @override
  State<UploadViem> createState() => _UploadViemState();
}

class _UploadViemState extends State<UploadViem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 60,
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
                        color: AppColors.lomanda, fontWeight: FontWeight.w700),
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
                        color: AppColors.lomanda, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getImagrFormCamera() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        imagePath = pickedImage.path;
      });
    }
  }

  getImagrFormGallery() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        imagePath = pickedImage.path;
      });
    }
  }
}
