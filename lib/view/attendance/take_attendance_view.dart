import 'package:edu_unity/res/constant/font/font.dart';
import 'package:edu_unity/res/widget/time_widget.dart';
import 'package:edu_unity/view/attendance/widget/attentance_item_widget.dart';
import 'package:edu_unity/view/attendance/widget/present_title_card_widget.dart';
import 'package:edu_unity/view/attendance/widget/present_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../res/constant/color/color.dart';
import '../../res/widget/date_widget.dart';

class TakeAttendanceView extends StatefulWidget {
  const TakeAttendanceView({super.key});

  @override
  State<TakeAttendanceView> createState() => _TakeAttendanceViewState();
}

class _TakeAttendanceViewState extends State<TakeAttendanceView> {
  DateTime _dateTime = DateTime.now();

  void _pickDate() {
    showDatePicker(
      context: context,
      initialDate: _dateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) {
      if (value != null) {
        setState(() {
          _dateTime = value;
        });
      }
    });
  }

  TimeOfDay _timeOfDay = const TimeOfDay(hour: 8, minute: 30);
  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Take Attendance'),
        actions: const [
          // Text(
          //   'save',
          //   style: TextStyle(color: Colors.white, fontFamily: TFont.latoBold),
          // ),
          Icon(Icons.save),
          SizedBox(
            width: 8,
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                dateAndTimeWidget(),
                const SizedBox(height: 16),
                const PresentTitleCardWidget(
                  present: '24',
                  absent: '3',
                  leave: '1',
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 35,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: TColors.darkBlue,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(6),
                                    topLeft: Radius.circular(6))),
                            child: const Center(
                              child: Text(
                                "Attendance",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.6,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return const AttentanceItemWidget();
                              },
                              itemCount: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300, shape: BoxShape.circle),
                    child: const Center(
                        child: Icon(Icons.person_add, color: Colors.green))),
                const SizedBox(width: 10),
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300, shape: BoxShape.circle),
                    child: const Center(
                        child: Icon(Icons.person_off, color: Colors.red)))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget dateAndTimeWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: InkWell(
                onTap: () {
                  _pickDate();
                },
                child: DateWidget(
                  date: DateFormat('dd/MM/yy').format(_dateTime),
                ))),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              _showTimePicker();
            },
            child: TimeWidget(time: _timeOfDay.format(context).toString()),
          ),
        ),
      ],
    );
  }
}
