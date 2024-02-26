import 'package:flutter/material.dart';
import 'package:flutter_application_4/core/app_colors.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool isVisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 220,
                ),
                Text('Create a new Account',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white)),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: AppColors.white),
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      label: const Text('Email'),
                      hintText: ('Enter your Email'),
                      hintStyle:
                          TextStyle(color: AppColors.grey, fontSize: 15)),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                    style: TextStyle(color: AppColors.white),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isVisable,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isVisable = !isVisable;
                              });
                            },
                            icon: Icon((isVisable)
                                ? Icons.remove_red_eye
                                : Icons.visibility_off_rounded)),
                        label: const Text('Password'),
                        hintText: ('Enter your Password'),
                        hintStyle:
                            TextStyle(color: AppColors.grey, fontSize: 15))),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    alignment: Alignment.center,
                    width: double.infinity,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColors.lomanda,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text('login'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I havn\'t an account ',
                      style: TextStyle(color: AppColors.grey, fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Creat One!',
                          style:
                              TextStyle(color: AppColors.lomanda, fontSize: 16),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
