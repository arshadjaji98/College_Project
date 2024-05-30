import 'package:dropdown_search/dropdown_search.dart';
import 'package:edu_unity/res/constant/color/color.dart';
import 'package:edu_unity/res/constant/font/font.dart';
import 'package:flutter/material.dart';

import '../../responsive.dart';

// ignore: must_be_immutable
class AppDropDown extends StatelessWidget {
  AppDropDown({
    super.key,
    required this.title,
    required this.hint,
    required this.items,
    this.onChanged,
    this.selectedItem,
    this.borderColor,
  });
  List<String> items;
  String title;
  String hint;
  String? selectedItem;
  Color? borderColor;
  void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
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
          child: DropdownSearch<String>(
            popupProps: const PopupProps.menu(
              fit: FlexFit.loose,
              showSelectedItems: true,
            ),
            items: items,
            dropdownDecoratorProps: DropDownDecoratorProps(
              textAlignVertical: TextAlignVertical.center,
              baseStyle: const TextStyle(
                color: TColors.gray,
                fontSize: 13,
                height: 0,
                fontFamily: TFont.latoRegular,
              ),
              dropdownSearchDecoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(
                    color: TColors.gray,
                    fontFamily: TFont.latoRegular,
                    fontWeight: FontWeight.w400),
                floatingLabelStyle: const TextStyle(color: TColors.lightBlue),
                border: OutlineInputBorder(
                  // gapPadding: 0.0,
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: TColors.lightBlue,
                  ),
                ),
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
            onChanged: onChanged,
            selectedItem: selectedItem,
          ),
        ),
        const SizedBox(
          height: 12,
        )
      ],
    );
  }
}
