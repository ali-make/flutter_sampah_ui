import 'package:flutter/material.dart';
import 'package:sampah_project/components/container_field.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const InputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerField(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.green,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.green,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
