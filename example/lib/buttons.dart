import 'package:flutter/material.dart';
import 'package:tqk_ui_kit/buttons/tqk_button.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TQKTextButton(
                text: 'ĐĂNG NHẬP',
                onPressed: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              TQKIconButton(
                text: 'ĐĂNG NHẬP',
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TQKStrokeButton(
                text: 'ĐĂNG NHẬP',
                onPressed: () {},
                isResponsive: true,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
