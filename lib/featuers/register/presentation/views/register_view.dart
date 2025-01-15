import 'package:flutter/material.dart';
import 'package:login_ui/featuers/register/presentation/views/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: const RegisterViewBody(),
    );
  }
}
