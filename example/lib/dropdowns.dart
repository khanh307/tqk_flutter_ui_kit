import 'package:flutter/material.dart';
import 'package:tqk_ui_kit/dropdowns/tqk_dropdown.dart';

class DropdownPage extends StatelessWidget {
  const DropdownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TQKOutlineDropdown(
                items: const [
                  DropdownMenuItem(
                    value: 1,
                    child: Text('1'),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text('2'),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text('3'),
                  ),
                  DropdownMenuItem(
                    value: 4,
                    child: Text('4'),
                  )
                ],
                onChange: (value) {},
                labelText: 'Dropdown',
              ),
              const SizedBox(
                height: 10,
              ),
              TQKUnderlineDropdown(
                items: const [
                  DropdownMenuItem(
                    value: 1,
                    child: Text('1'),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text('2'),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text('3'),
                  ),
                  DropdownMenuItem(
                    value: 4,
                    child: Text('4'),
                  )
                ],
                onChange: (value) {},
                labelText: 'Dropdown',
                hintText: 'Chọn giá trị',
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
