import 'package:flutter/material.dart';
import 'package:tqk_ui_kit/form_field/tqk_form_field.dart';

class FormFieldPage extends StatelessWidget {
  const FormFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TQKOutlineFormField(
                hintText: 'Số điện thoại',
              ),
              SizedBox(
                height: 10,
              ),
              TQKUnderlineFormField(
                labelText: 'Số điện thoại',
              ),
              SizedBox(
                height: 10,
              ),
              TQKIconFormField(
                hintText: 'Số điện thoại',
                prefixIcon: Icons.phone,
              ),
              SizedBox(
                height: 10,
              ),
              TQKLabelFormField(
                labelText: 'Số điện thoại',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
