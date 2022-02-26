import 'package:flutter/material.dart';

typedef OnPageChangeCallBack = void Function(int);

class CustomBar extends StatefulWidget {
  int? selectedIndex;
  final OnPageChangeCallBack? onPageChange;
  CustomBar({Key? key, this.onPageChange, this.selectedIndex = 0})
      : super(key: key);

  @override
  _CustomBarState createState() => _CustomBarState();
}

class _CustomBarState extends State<CustomBar> {
  final Color color = Colors.deepPurpleAccent[100]!;
  bool isSelected = false;

  onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
    });
    widget.onPageChange!(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onItemTapped,
      currentIndex: widget.selectedIndex!,
      showSelectedLabels: false,
      items: [
        BottomNavigationBarItem(
          activeIcon: Container(
            decoration: BoxDecoration(
              color: color.withOpacity(0.4),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 40,
            width: 40,
            child: Icon(
              Icons.home,
              color: color,
            ),
          ),
          backgroundColor: isSelected == true ? color : Colors.grey[850],
          label: "Home",
          icon: Icon(
            Icons.home,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Container(
            decoration: BoxDecoration(
              color: color.withOpacity(0.4),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 40,
            width: 40,
            child: Icon(
              Icons.calendar_today,
              color: color,
            ),
          ),
          backgroundColor: isSelected == true ? color : Colors.grey[850],
          label: "Appointment",
          icon: Icon(Icons.calendar_today),
        ),
        BottomNavigationBarItem(
          activeIcon: Container(
            decoration: BoxDecoration(
              color: color.withOpacity(0.4),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 40,
            width: 40,
            child: Icon(
              Icons.message_outlined,
              color: color,
            ),
          ),
          backgroundColor: isSelected == true ? color : Colors.grey[850],
          label: "Message",
          icon: Icon(
            Icons.message_outlined,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Container(
            decoration: BoxDecoration(
              color: color.withOpacity(0.4),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 40,
            width: 40,
            child: Icon(
              Icons.account_box,
              color: color,
            ),
          ),
          backgroundColor: isSelected == true ? color : Colors.grey[850],
          label: "Settings",
          icon: Icon(
            Icons.account_box,
          ),
        ),
      ],
    );
  }
}
