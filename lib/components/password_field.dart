import 'package:flutter/material.dart';
import 'package:sampah_project/components/container_field.dart';

class PasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final hintText;
  const PasswordField({
    Key? key,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerField(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.green,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            Icons.lock,
            color: Colors.green,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.green,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
