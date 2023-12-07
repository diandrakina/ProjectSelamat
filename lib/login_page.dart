import 'package:flutter/material.dart';
import 'package:selamat/styles.dart';
import 'package:selamat/widget/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameControl = TextEditingController();
  final passwordControl = TextEditingController();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WECOME TO SELAMAT!',
            style: TextStyles.title.copyWith(color: Colors.black)),
        centerTitle: true,
        backgroundColor: AppColors.blue2,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/login-page.png',
                height: 260.0,
              ),
              const SizedBox(
                height: 24.0,
              ),
              SizedBox(height: 24.0),
              //USERNAME
              CustomTextField(
                controller: usernameControl,
                textInputType: TextInputType.name,
                textInputAction: TextInputAction.next,
                hint: 'username',
              ),
              const SizedBox(height: 16.0),
              //PASSWORD
              CustomTextField(
                controller: passwordControl,
                textInputType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                hint: 'password',
                isObscure: isObscure,
                hasSuffix: true,
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              ),
              const SizedBox(height: 8.0),
              //FORGOT PASSWORD
              Text(
                'Forgot Password ?',
                style: TextStyles.body,
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blue1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Login',
                      style: TextStyles.title
                          .copyWith(fontSize: 20.0, color: Colors.white),
                    ),
                  )),
              const SizedBox(
                height: 24.0,
              ),
              Text(
                'Don\'t have an account?',
                style: TextStyles.body.copyWith(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              Text(
                'Sign Up',
                style: TextStyles.body
                    .copyWith(fontSize: 16.0, color: AppColors.blue1),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
