import 'package:edu_unity/res/constant/font/font.dart';
import 'package:flutter/material.dart';

import '../constant/color/color.dart';

class CustomTextField extends StatelessWidget {
  final bool? isPass;
  final TextEditingController? controller;
  final String title;
  final String hint;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    this.isPass,
    required this.title,
    required this.hint,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontFamily: TFont.loraBold,
              fontSize: 13,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 47,
          child: TextFormField(
            obscureText: isPass ?? false,
            controller: controller,
            cursorColor: TColors.darkBlue,
            keyboardType: keyboardType,
            validator: validator,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(
                  fontSize: 14,
                  color: TColors.gray,
                  fontFamily: TFont.latoRegular,
                  fontWeight: FontWeight.w400),
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: TColors.lightBlue),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: TColors.lightBlue),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: TColors.lightBlue),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        )
      ],
    );
  }
}
