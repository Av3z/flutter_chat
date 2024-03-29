import 'package:flutter/material.dart';
import 'package:flutter_chat/src/pages/login_or_register_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginOrRegisterPage(),
    );
  }
}
