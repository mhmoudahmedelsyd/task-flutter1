import 'package:courestest/components.dart';
import 'package:courestest/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formKey = GlobalKey<FormState>();

  var nameController = TextEditingController();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var cPasswordController = TextEditingController();

  var phoneController = TextEditingController();

  bool isPassword = true;
  bool isConfirmPassword = true;

  IconData suffixIcon = Icons.visibility_off_outlined;
  IconData confirmSuffixIcon = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          clipPath(
            title: 'Register',
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  defaultTextForm(
                    controller: nameController,
                    label: 'Full Name',
                    prefix: Icons.account_box,
                    type: TextInputType.name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your name';
                      } else
                        return null;
                    },
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  defaultTextForm(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your email address';
                        } else
                          return null;
                      },
                      type: TextInputType.emailAddress,
                      label: 'Email Address',
                      prefix: Icons.email),
                  const SizedBox(
                    height: 15.0,
                  ),
                  defaultTextForm(
                    controller: passwordController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'please enter your password';
                      } else {
                        return null;
                      }
                    },
                    type: TextInputType.visiblePassword,
                    label: 'Password',
                    prefix: Icons.lock,
                    isPassword: isPassword,
                    obscuringCharacter: "*",
                    suffix: suffixIcon,
                    suffixPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                        suffixIcon = isPassword
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  defaultTextForm(
                    controller: cPasswordController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'please enter your email address';
                      } else if(!value.toString().contains('@')){
                        return 'enter valid email';
                      }else
                        return null;
                    },
                    type: TextInputType.visiblePassword,
                    label: 'Confirm Password',
                    prefix: Icons.lock,
                    isPassword: isConfirmPassword,
                    obscuringCharacter: "*",
                    suffix: confirmSuffixIcon,
                    suffixPressed: () {
                      setState(() {
                        isConfirmPassword = !isConfirmPassword;
                        confirmSuffixIcon = isConfirmPassword
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  defaultTextForm(
                    controller: phoneController,
                    label: 'Phone Number',
                    prefix: Icons.phone,
                    type: TextInputType.phone,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your phone';
                      } else
                        return null;
                    },
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => LoginScreen()));
                          print('Done Register');
                        }
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    color: Colors.white,
                    child: ElevatedButton(
                      onPressed: () {
                        navigateAndRemove(context,LoginScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
