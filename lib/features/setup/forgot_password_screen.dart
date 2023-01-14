import 'package:flutter/material.dart';
import 'package:kheloo/features/utils/colors.dart';
import 'package:kheloo/features/utils/styles.dart';
import 'package:kheloo/features/widgets/textform_widget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const String route = 'forgot_password_screen';
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                    'Forgot Password??',
                    style: tsS28W700CFFF,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
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
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormFieldWidget(
                          controller: _passwordController,
                          hintText: 'Enter Code',
                          validator: (value) {
                            if ((value?.trim().isEmpty ?? true)) {
                              return 'Password is required';
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
                                backgroundColor: colorPrimary,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: const Text('Get Conde')),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextFormFieldWidget(
                    controller: _passwordController,
                    hintText: 'New Password',
                    validator: (value) {
                      if ((value?.trim().isEmpty ?? true)) {
                        return 'New Password is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 40),
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
                            backgroundColor: colorPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18))),
                        child: const Text('CHANGE')),
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
