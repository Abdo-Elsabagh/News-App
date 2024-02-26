import 'package:flutter/material.dart';
import 'package:flutter_application_4/core/app_colors.dart';
import 'package:flutter_application_4/feature/auth/login_view.dart';
import 'package:flutter_application_4/feature/home/home_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  var formKey = GlobalKey<FormState>();
  bool isVisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formKey,
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
                    validator: (value) {
              
                      if (value!.isEmpty) {
                        return 'Name must not be empty!';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: AppColors.white),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        label: const Text('Name'),
                        hintText: ('Enter your Name'),
                        hintStyle:
                            TextStyle(color: AppColors.grey, fontSize: 15)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email must not be empty!';
                      }
                      return null;
                    },
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
                      validator: (value) {
                        if (value!.isEmpty || value.length < 8) {
                          return 'Password must not be empty OR \nPassword must not length 8 ';
                        }
                        return null;
                      },
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
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const HomeView(),
                        ));
                      }
                    },
                    child: Container(
                      height: 40,
                      alignment: Alignment.center,
                      width: double.infinity,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppColors.lomanda,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text('Sing Up'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'I have an account ',
                        style: TextStyle(color: AppColors.grey, fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const LoginView(),
                            ));
                          },
                          child: Text(
                            'Login!',
                            style: TextStyle(
                                color: AppColors.lomanda, fontSize: 16),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
