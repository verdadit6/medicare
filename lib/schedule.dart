import 'package:flutter/material.dart';
import 'package:medicare/custom_event.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final Color color = Colors.deepPurpleAccent[100]!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "My Schedule",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                  ),
                  child: Text(
                    "Upcoming events",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            CustomEvent(
              backgroundColor: color.withOpacity(0.3),
              date: "11",
              month: "Jul",
              speciality: "Diagnostic Heart",
              time: "01:05 PM",
              drName: "Dr. Horriett Myers",
              icon: Icons.video_call,
            ),
            CustomEvent(
              backgroundColor: color.withOpacity(0.3),
              date: "24",
              month: "Aug",
              speciality: "Brain Checkup",
              time: "12:55 AM",
              drName: "Dr.Michal Rica",
              icon: Icons.video_call,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 20,
                  ),
                  child: Text(
                    "Completed Events",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            CustomEvent(
              backgroundColor: Colors.grey[850],
              date: "3",
              month: "Mar",
              speciality: "Nutrition Consult",
              time: "07:45 PM",
              drName: "Dr. Mollie Barber",
              icon: Icons.call,
            ),
            CustomEvent(
              backgroundColor: Colors.grey[850],
              date: "16",
              month: "Feb",
              speciality: "Diagnostic Corona",
              time: "04:25 PM",
              drName: "Dr.Jean Estrada",
              icon: Icons.call,
            ),
            CustomEvent(
              backgroundColor: Colors.grey[850],
              date: "27",
              month: "Jan",
              speciality: "pet Chekup",
              time: "07:55 PM",
              drName: "Dr.Joe Mellon",
              icon: Icons.call,
            ),
          ],
        ),
      ),
    );
  }
}
