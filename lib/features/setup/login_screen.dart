import 'package:flutter/material.dart';
import 'package:kheloo/features/home/home_screen.dart';
import 'package:kheloo/features/setup/forgot_password_screen.dart';
import 'package:kheloo/features/setup/signup_screen.dart';
import 'package:kheloo/features/utils/colors.dart';
import 'package:kheloo/features/utils/styles.dart';
import 'package:kheloo/features/widgets/textform_widget.dart';

class LoginScreen extends StatefulWidget {
  static const String route = 'login_screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _keyForm = GlobalKey<FormState>();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorBlack,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
            child: Form(
              key: _keyForm,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/images/logo.gif',
                    height: 100,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'SIGN IN',
                    style: tsS28W700CFFF,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  TextFormFieldWidget(
                    controller: _mobileController,
                    hintText: 'Mobile Number',
                    validator: (value) {
                      if ((value?.trim().isEmpty ?? true)) {
                        return 'Mobile is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormFieldWidget(
                    controller: _passwordController,
                    hintText: 'Password',
                    validator: (value) {
                      if ((value?.trim().isEmpty ?? true)) {
                        return 'Password is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: (() => Navigator.pushNamed(
                        context, ForgotPasswordScreen.route)),
                    child: Text(
                      'Forgot Password',
                      style: tsS15W300CFFF,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_keyForm.currentState?.validate() ?? false) {
                            Navigator.pushNamed(context, HomeScreen.route);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 2,
                            backgroundColor: colorPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22))),
                        child: const Text('SIGN IN')),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, SignUpScreen.route);
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 2,
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(18),
                            )),
                        child: const Text('Register Now')),
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
