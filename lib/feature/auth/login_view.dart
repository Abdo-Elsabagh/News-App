import 'package:flutter/material.dart';
import 'package:flutter_application_4/core/app_colors.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                  width: 250,
                ),
                Text('Login to your Account',
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
                      hintText: ('Enter y Email'),
                      hintStyle:
                          TextStyle(color: AppColors.white, fontSize: 15)),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                    style: TextStyle(color: AppColors.white),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: () {},
                        ),
                        label: const Text('Password'),
                        hintText: ('Enter y Password'),
                        hintStyle:
                            TextStyle(color: AppColors.white, fontSize: 15))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
