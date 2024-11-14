import 'package:alarm/widget/edit_alarm.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          "Alarm",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigoAccent,
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.white,
            isScrollControlled: true,
            isDismissible: false,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            context: context,
            builder: (context) {
              return const FractionallySizedBox(

                  heightFactor: 0.70,
                  // widthFactor: double.infinity,
                  child: EditAlarm());
            },
          );
        },
        child: const Icon(
          Icons.alarm_add_rounded,
          size: 33,
          color: Colors.white,
        ),
      ),
    );
  }
}
