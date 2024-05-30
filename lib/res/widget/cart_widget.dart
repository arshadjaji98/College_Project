import 'package:edu_unity/res/constant/color/color.dart';
import 'package:flutter/material.dart';

import '../constant/font/font.dart';

class CartWidget extends StatelessWidget {
  final String item1, item2, title, subtitle;
  const CartWidget(
      {super.key,
      required this.item1,
      required this.item2,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                color: TColors.darkBlue,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                const SizedBox(
                  width: 6,
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                  fontFamily: TFont.loraRegular,
                                  fontSize: 11,
                                  color: TColors.gray,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              item1,
                              style: const TextStyle(
                                  fontFamily: TFont.loraBold,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              subtitle,
                              style: const TextStyle(
                                  fontFamily: TFont.loraRegular,
                                  fontSize: 11,
                                  color: TColors.gray,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              item2,
                              style: const TextStyle(
                                  color: TColors.darkBlue,
                                  fontFamily: TFont.loraBold,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 3,
        )
      ],
    );
  }
}
