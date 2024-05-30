import 'package:edu_unity/res/constant/font/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardCartWidget extends StatelessWidget {
  final String title, count, icon;
  const DashboardCartWidget(
      {super.key,
      required this.title,
      required this.count,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.height * 0.2,
      height: size.height * 0.1,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontFamily: TFont.loraBold, fontSize: 14),
                  ),
                  Text(count,
                      style: const TextStyle(
                          fontFamily: TFont.latoRegular,
                          fontWeight: FontWeight.w400,
                          fontSize: 12)),
                ],
              ),
              Flexible(
                  child: SvgPicture.asset(
                icon,
                height: 50,
                width: 50,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
