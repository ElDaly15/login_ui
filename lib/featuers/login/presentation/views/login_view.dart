import 'package:flutter/material.dart';
import 'package:login_ui/featuers/login/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: const LoginViewBody(),
    );
  }
}
