import 'package:flutter/material.dart';
import 'package:kheloo/features/setup/signup_form_screen.dart';
import 'package:kheloo/features/utils/colors.dart';
import 'package:kheloo/features/utils/styles.dart';
import 'package:kheloo/features/widgets/textform_widget.dart';

class SignUpScreen extends StatefulWidget {
  static const String route = 'register_screen';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _keyForm = GlobalKey<FormState>();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorBlack,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 100),
            child: Form(
              key: _keyForm,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.gif',
                    height: 100,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'SIGN UP',
                    style: tsS28W700CFFF,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormFieldWidget(
                          controller: _mobileController,
                          hintText: 'Enter Mobile',
                          validator: (value) {
                            if ((value?.trim().isEmpty ?? true)) {
                              return 'Mobile is required';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(width: 30),
                      SizedBox(
                        height: 60,
                        child: ElevatedButton(
                            onPressed: () {
                              if (_keyForm.currentState?.validate() ?? false) {
                                debugPrint('success');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 2,
                                backgroundColor: colorBlack,
                                side: const BorderSide(color: colorPrimary),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: const Text('Get Conde')),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextFormFieldWidget(
                    controller: _passwordController,
                    hintText: 'SMS Verification Code',
                    validator: (value) {
                      if ((value?.trim().isEmpty ?? true)) {
                        return 'Verification code is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 40),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 60,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, SignUpFormScreen.route);
                          },
                          style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              elevation: 2,
                              backgroundColor: colorPrimary,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18))),
                          child: const Text('NEXT')),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
