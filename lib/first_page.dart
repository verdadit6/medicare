import 'package:flutter/material.dart';
import 'package:medicare/custom_chip.dart';
import 'package:medicare/custom_doctor_card.dart';
import 'package:medicare/custom_field.dart';

import 'dr_info.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool isSelected = false;
  final Color? color = Colors.deepPurpleAccent[100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 120,
                ),
                Column(
                  children: [
                    Text(
                      "current location",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.deepPurpleAccent[100],
                        ),
                        Text(
                          "semarang, INA",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Positioned(
                        left: 20,
                        bottom: 20,
                        child: Container(
                          height: 9,
                          width: 9,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepPurpleAccent[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomField(
              fontSize: 15,
              hintText: "Search a doctor or health issue",
              prefixIcon: Icons.search,
              fillColor: Colors.grey[850],
              textColor: Colors.white,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  child: Text(
                    "Upcoming Schedule",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 140,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: color,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 180,
              width: 380,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfUxCw-_OR8hRVCcmbD6GaUIPmRQLkkUzTmA&usqp=CAU",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr.Haley lawrence",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Dermatologists",
                            style: TextStyle(
                              color: Colors.deepPurple[50],
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                          left: 70,
                        ),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.video_call_outlined,
                            color: color,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20,
                      bottom: 20,
                    ),
                    child: Container(
                      height: 55,
                      width: 360,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100]!.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.timer,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Sun,Jan 10,8:00am to 10:00am",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
              child: Row(
                children: [
                  Text(
                    "Let's find your doctor",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 156,
                  ),
                  Icon(
                    Icons.menu,
                    color: color,
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return CustomChip(
                    chipName: customChipList[index].chipName,
                    icon: customChipList[index].icon,
                  );
                },
                itemCount: customChipList.length,
              ),
            ),
            CustomDoctorCard(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return DrInfo();
                }));
              },
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD_lDzWpanuuL2s3VPyUWrjFWB0cOJAGXqeA&usqp=CAU",
              drName: "Dr.Anna Baker",
              icon: Icons.star_half_outlined,
              rate: "4.5",
              reviews: "120 Reviews",
              speciality: "Heart Surgeon Specialist",
            ),
            CustomDoctorCard(
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPNOtyzs-7ftzehOfHMy9OAtc3Z3fQaMD_PQ&usqp=CAU",
              drName: "Dr.Emilie Jones",
              icon: Icons.star_outlined,
              rate: "4.0",
              reviews: "100 Reviews",
              speciality: "Padeatrition",
            ),
            CustomDoctorCard(
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaYFqmUacnQaiELoWz5uey1PUpjfz23iYZ1A&usqp=CAU",
              drName: "Dr.Joe Taylor",
              icon: Icons.star_half_outlined,
              rate: "4.0",
              reviews: "90 Reviews",
              speciality: "Opthomologist",
            ),
          ],
        ),
      ),
    );
  }
}

List<CustomChipData> customChipList = [
  CustomChipData(
    chipName: "Cardiologist",
    icon: Icons.favorite,
  ),
  CustomChipData(
    chipName: "Opthalmologist",
    icon: Icons.remove_red_eye,
  ),
  CustomChipData(
    chipName: "Vetenerian",
    icon: Icons.volunteer_activism,
  )
];

class CustomChipData {
  final String? chipName;
  final IconData? icon;

  CustomChipData({
    this.chipName,
    this.icon,
  });
}
