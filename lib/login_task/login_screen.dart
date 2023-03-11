import 'package:courestest/animatedlist_task/animation_screen.dart';
import 'package:courestest/register_task/register_screen.dart';
import 'package:courestest/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isPassword = true;
  IconData suffixIcon = Icons.visibility_off_outlined;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            clipPath(title: 'Login'),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [

                    defaultTextForm(
                        controller: emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your email address';
                          } else if(!value.toString().contains('@')){
                            return 'enter valid email';
                          }else
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
                            navigateAndRemove(context,AnimationScreen());
                          }
                        },
                        child: const Text(
                          'Login',
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
                          navigateAndRemove(context,RegisterScreen());

                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        child: const Text(
                          'Register',
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
      ),
    );
  }
}
