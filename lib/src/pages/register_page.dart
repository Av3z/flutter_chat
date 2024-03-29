import 'package:flutter/material.dart';
import 'package:flutter_chat/src/components/text_button_custom.dart';
import 'package:flutter_chat/src/components/text_field_custom.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.chat,
                size: 100,
              ),
              const SizedBox(
                height: 30,
              ),
              TextFieldCustom(
                  obscureText: false,
                  hintText: 'email',
                  controller: emailController),
              const SizedBox(
                height: 10,
              ),
              TextFieldCustom(
                  obscureText: false,
                  hintText: 'password',
                  controller: passwordController),
              const SizedBox(
                height: 10,
              ),
              TextFieldCustom(
                  obscureText: false,
                  hintText: 'confirm password',
                  controller: confirmPasswordController),
              const SizedBox(
                height: 40,
              ),
              TextButtonCustom(onTap: () {}, text: 'Login'),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already a member? ',
                  ),
                  GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Login now',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
