import 'package:flutter/material.dart';
import 'package:medicare/chats.dart';
import 'package:medicare/custom_bar.dart';
import 'package:medicare/first_page.dart';
import 'package:medicare/schedule.dart';
import 'package:medicare/settings.dart';

class Home extends StatefulWidget {
  final int selectedIndex;
  const Home({Key? key, this.selectedIndex = 0}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController? myPage;

  @override
  void initState() {
    myPage = PageController(initialPage: widget.selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          FirstPage(),
          Schedule(),
          Chats(),
          Settings(),
        ],
        controller: myPage,
      ),
      bottomNavigationBar: CustomBar(
        selectedIndex: widget.selectedIndex,
        onPageChange: (int index) {
          myPage?.jumpToPage(index);
        },
      ),
    );
  }
}
