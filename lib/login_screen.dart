import 'package:courestest/customClipperClass.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
   const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
var formKey=GlobalKey<FormState>();

var nameController=TextEditingController();

var emailController=TextEditingController();

var passwordController=TextEditingController();

var cPasswordController=TextEditingController();

var phoneController=TextEditingController();

bool isPassword=true;
bool isConfirmPassword=true;

IconData suffixIcon=Icons.visibility_outlined;
IconData confirmSuffixIcon=Icons.visibility_outlined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
      children: [
          ClipPath(
            clipper: Cliper(),
            child: Container(
              color: Colors.deepPurple,
              height: 220,
              child: const Center(
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'pleas enter your name';
                      }else
                        return null;
                    },
                    keyboardType: TextInputType.name,
                    decoration:const InputDecoration(
                      labelText: 'Full Name',
                      border:OutlineInputBorder(),
                      prefixIcon: Icon(Icons.account_box),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: emailController,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'pleas enter your email address';
                      }else
                        return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration:const InputDecoration(
                      labelText: 'Email Address',
                      border:OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscuringCharacter: '*',
                    obscureText: isPassword,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'pleas enter your password';
                      }else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.visiblePassword,
                    decoration:InputDecoration(
                      labelText: 'Password',
                      border:const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            isPassword=!isPassword;
                            suffixIcon =isPassword ?Icons.visibility_outlined:Icons.visibility_off_outlined;
                          });
                      }, icon: Icon(suffixIcon)),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: cPasswordController,
                    obscuringCharacter: '*',
                    obscureText: isConfirmPassword,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'pleas enter your password';
                      }else
                        return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    decoration:InputDecoration(
                      labelText: 'Confirm Password',
                      border:const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          isConfirmPassword=!isConfirmPassword;
                          confirmSuffixIcon =isConfirmPassword ?Icons.visibility_outlined:Icons.visibility_off_outlined;
                        });
                      }, icon: Icon(confirmSuffixIcon)),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: phoneController,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'pleas enter your phone';
                      }else
                        return null;
                    },
                    keyboardType: TextInputType.phone,
                    decoration:const InputDecoration(
                      labelText: 'Phone Number',
                      border:OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                       formKey.currentState!.validate();
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
                        print('Login..');
                      },
                      style: ElevatedButton.styleFrom(
                         primary: Colors.white,
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple
                        ),
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

