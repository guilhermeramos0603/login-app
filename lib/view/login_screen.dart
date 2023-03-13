import 'package:app/components/login/custom_login_button_component.dart';
import 'package:app/controllers/login_controller.dart';
import 'package:app/widgets/custom_text__field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginController _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.people, size: 180),
              CustomTextFieldWidget(
                  label: 'E-mail', onChanged: _controller.setEmail),
              CustomTextFieldWidget(
                label: 'Senha',
                onChanged: _controller.setPass,
                obscureText: true,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomLoginButtonComponent(
                loginController: _controller,
              )
            ]),
      ),
    );
  }
}
