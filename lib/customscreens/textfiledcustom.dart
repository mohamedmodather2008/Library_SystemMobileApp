import 'package:flutter/material.dart';

class Textfiledcustom extends StatelessWidget {
  final String lable;
  final String hint;
  final IconData icon;
  final String? Function(String?)? validate;
  final TextEditingController cont;

  const Textfiledcustom({super.key, required this.lable, required this.hint, required this.icon, this.validate, required this.cont});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validate,
      controller: cont,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        label: Text(lable),
        hint: Text(hint),
        
      ),
    );
  }
}