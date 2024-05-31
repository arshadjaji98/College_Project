import 'package:edu_unity/res/constant/color/color.dart';
import 'package:edu_unity/res/constant/font/font.dart';
import 'package:flutter/material.dart';

class AttentanceItemWidget extends StatelessWidget {
  const AttentanceItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.black12))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1)),
                child: const Center(
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Kashif',
                style: TextStyle(fontFamily: TFont.latoRegular, fontSize: 16),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.close, color: Colors.red),
              SizedBox(width: 10),
              Icon(Icons.thermostat),
              SizedBox(width: 10),
              Icon(Icons.check, color: Colors.green),
            ],
          )
        ],
      ),
    );
  }
}
