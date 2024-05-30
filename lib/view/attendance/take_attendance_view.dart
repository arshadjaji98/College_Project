import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../res/constant/color/color.dart';

class TakeAttendanceView extends StatefulWidget {
  const TakeAttendanceView({super.key});

  @override
  State<TakeAttendanceView> createState() => _TakeAttendanceViewState();
}

class _TakeAttendanceViewState extends State<TakeAttendanceView> {
  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
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
    String formattedDate = DateFormat('dd/MM/yy').format(_dateTime);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Take Attendance'),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 5,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 42,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      _showDatePicker();
                                    },
                                    icon: const Icon(Icons.calendar_month)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    formattedDate,
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        height: 42,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      _showTimePicker();
                                    },
                                    icon: const Icon(Icons.access_time)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    _timeOfDay.format(context).toString(),
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.blue),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Icon(Icons.close, color: Colors.red),
                            Text("Absent  2", style: TextStyle(fontSize: 16)),
                          ]),
                          Row(children: [
                            Icon(Icons.check, color: Colors.green),
                            Text("Present  20", style: TextStyle(fontSize: 16)),
                          ]),
                          Row(children: [
                            Icon(Icons.thermostat, color: Colors.grey),
                            Text("Leave  1", style: TextStyle(fontSize: 16)),
                          ]),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.blue)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: TColors.darkBlue,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(6),
                                topLeft: Radius.circular(6))),
                        child: const Center(
                          child: Text(
                            "Attendance",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.1)),
                                child: const Center(
                                    child: Icon(
                                  Icons.person_2,
                                  color: Colors.grey,
                                ))),
                            const Expanded(
                              child: ListTile(
                                title: Text('Kashif Shah'),
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.close, color: Colors.red),
                                const SizedBox(width: 5),
                                Container(
                                    height: 30, width: 1, color: Colors.grey),
                                const SizedBox(width: 5),
                                const Icon(Icons.thermostat),
                                const SizedBox(width: 5),
                                Container(
                                    height: 30, width: 1, color: Colors.grey),
                                const SizedBox(width: 5),
                                const Icon(Icons.check, color: Colors.green),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Divider(height: 1, thickness: 1),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.1)),
                                child: const Center(
                                    child: Icon(Icons.person_2,
                                        color: Colors.grey))),
                            const Expanded(
                              child: ListTile(
                                title: Text('Kashif Shah'),
                              ),
                            ),
                            const Icon(Icons.close, color: Colors.red),
                            const SizedBox(width: 5),
                            Container(height: 30, width: 1, color: Colors.grey),
                            const SizedBox(width: 5),
                            const Icon(Icons.thermostat),
                            const SizedBox(width: 5),
                            Container(height: 30, width: 1, color: Colors.grey),
                            const SizedBox(width: 5),
                            const Icon(Icons.check, color: Colors.green),
                          ],
                        ),
                      ),
                      const Divider(height: 1, thickness: 1),
                    ],
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
}
