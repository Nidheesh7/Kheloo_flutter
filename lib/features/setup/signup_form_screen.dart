import 'package:flutter/material.dart';
import 'package:kheloo/features/setup/forgot_password_screen.dart';
import 'package:kheloo/features/utils/colors.dart';
import 'package:kheloo/features/utils/styles.dart';
import 'package:kheloo/features/widgets/textform_widget.dart';

class SignUpFormScreen extends StatefulWidget {
  static const String route = 'signup_form_screen';
  const SignUpFormScreen({super.key});

  @override
  State<SignUpFormScreen> createState() => _SignUpFormScreenState();
}

class _SignUpFormScreenState extends State<SignUpFormScreen> {
  final _keyForm = GlobalKey<FormState>();
  final _uNameController = TextEditingController();
  final _fNameController = TextEditingController();
  final _lNameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorBlack,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 100),
            child: Form(
              key: _keyForm,
              child: Column(
                children: [
                  TextFormFieldWidget(
                    controller: _uNameController,
                    hintText: 'User Name (Display Name)',
                    validator: (value) {
                      if ((value?.trim().isEmpty ?? true)) {
                        return 'User Name is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormFieldWidget(
                    controller: _fNameController,
                    hintText: 'First Name',
                    validator: (value) {
                      if ((value?.trim().isEmpty ?? true)) {
                        return 'First name is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormFieldWidget(
                    controller: _lNameController,
                    hintText: 'Last Name',
                    validator: (value) {
                      if ((value?.trim().isEmpty ?? true)) {
                        return 'Last name is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormFieldWidget(
                          controller: _passwordController,
                          hintText: 'DD',
                          validator: (value) {
                            if ((value?.trim().isEmpty ?? true)) {
                              return 'Date is required';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormFieldWidget(
                          controller: _passwordController,
                          hintText: 'MM',
                          validator: (value) {
                            if ((value?.trim().isEmpty ?? true)) {
                              return 'Month is required';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormFieldWidget(
                          controller: _passwordController,
                          hintText: 'YY',
                          validator: (value) {
                            if ((value?.trim().isEmpty ?? true)) {
                              return 'Year is required';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
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
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 55,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 2,
                                backgroundColor: colorBlack,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18))),
                            child: const Text('PREVIOUS')),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        height: 55,
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
                            child: const Text('SIGN UP')),
                      ),
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
