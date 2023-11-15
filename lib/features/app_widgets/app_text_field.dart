import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {Key? key,
        required this.labelText,
        this.onChanged,
        this.textInputType = TextInputType.name,
        this.obscureText = false,
        this.errorText,
        this.suffixIcon,
        this.prefixIcon,
        this.suffixIconAction})
      : super(key: key);

  final String labelText;
  final Function(String)? onChanged;
  final TextInputType textInputType;
  final bool obscureText;
  final String? errorText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final VoidCallback? suffixIconAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 10),
      height: 46,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20)
      ),
      child: TextField(
        onChanged: onChanged,
        keyboardType: textInputType,
        obscureText: obscureText,
        style: Theme.of(context).textTheme.titleMedium,
        decoration: InputDecoration(

          border: InputBorder.none,
          suffixIcon: InkWell(onTap: suffixIconAction, child: suffixIcon),
          prefixIcon: prefixIcon,
          labelText: labelText,
          errorText: errorText,
        ),
      ),
    );
  }
}