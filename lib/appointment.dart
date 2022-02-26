import 'package:flutter/material.dart';
import 'package:medicare/custom_Elevated_button.dart';
import 'package:medicare/custom_appointment_chips.dart';
import 'package:medicare/custom_time-chip.dart';
import 'package:medicare/dr_info.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          Container(
            height: 200,
            width: 400,
            color: Colors.grey[850],
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return DrInfo();
                          }));
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Appointment",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 30,
                    ),
                    child: Row(
                      children: appointmentChipList,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Morning Slots",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(children: morningSlot),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Afternoon Slots",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(children: afternoonSlot),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Evening Slots",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(children: eveningSlot),
          CustomElevatedButton(
            onPressed: () {},
            backgroundColor: Colors.deepPurpleAccent[100],
            color: Colors.white,
            radius: 10,
            text: "Confirm Appointment",
            width: 380,
            height: 50,
          )
        ],
      ),
    );
  }
}

List<Widget> appointmentChipList = [
  AppointmentChip(
    height: 70,
    width: 30,
    date: "01",
    day: "Sun",
  ),
  AppointmentChip(
    height: 70,
    width: 30,
    date: "02",
    day: "Mon",
  ),
  AppointmentChip(
    height: 70,
    width: 30,
    date: "03",
    day: "Tue",
  ),
  AppointmentChip(
    height: 70,
    width: 30,
    date: "04",
    day: "Wed",
  ),
  AppointmentChip(
    height: 70,
    width: 30,
    date: "05",
    day: "Thu",
  ),
  AppointmentChip(
    height: 70,
    width: 30,
    date: "06",
    day: "Fri",
  ),
  AppointmentChip(
    height: 70,
    width: 30,
    date: "07",
    day: "Sat",
  ),
  AppointmentChip(
    height: 70,
    width: 30,
    date: "08",
    day: "Sun",
  ),
  AppointmentChip(
    height: 70,
    width: 30,
    date: "09",
    day: "Mon",
  ),
  AppointmentChip(
    height: 70,
    width: 30,
    date: "10",
    day: "Tue",
  ),
  AppointmentChip(
    height: 70,
    width: 30,
    date: "11",
    day: "Wed",
  ),
];
List<Widget> morningSlot = [
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            TimeChip(
              text: "10:10 am",
            ),
            TimeChip(
              text: "10:30 am",
            ),
            TimeChip(
              text: "10:50 am",
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TimeChip(
              text: "11:20 am",
            ),
            TimeChip(
              text: "11:40 am",
            ),
          ],
        ),
      ),
    ],
  ),
];
List<Widget> afternoonSlot = [
  Row(
    children: [
      TimeChip(
        text: "02:00 pm",
      ),
      TimeChip(
        text: "02:20 pm",
      ),
      TimeChip(
        text: "02:40 pm",
      ),
    ],
  ),
];
List<Widget> eveningSlot = [
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            TimeChip(
              text: "07:00 pm",
            ),
            TimeChip(
              text: "07:20 pm",
            ),
            TimeChip(
              text: "07:40 pm",
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TimeChip(
              text: "08:00 pm",
            ),
            TimeChip(
              text: "08:20 pm",
            ),
          ],
        ),
      ),
    ],
  ),
];
