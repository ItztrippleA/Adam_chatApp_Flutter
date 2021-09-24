import 'package:adam_chat_appp/sreens/calls.dart';
import 'package:adam_chat_appp/sreens/chats.dart';
import 'package:adam_chat_appp/sreens/people.dart';
import 'package:adam_chat_appp/sreens/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        home: HomePage(),
        theme: CupertinoThemeData(
            brightness: Brightness.light, primaryColor: Color(0xFF08C187)));
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  var screens = [Chats(), Calls(), People(), Settings()];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CupertinoTabScaffold(
      resizeToAvoidBottomInset: true,
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              label: "Chats", icon: Icon(CupertinoIcons.chat_bubble_2_fill)),
          BottomNavigationBarItem(
              label: "Calls", icon: Icon(CupertinoIcons.phone)),
          BottomNavigationBarItem(
              label: "People", icon: Icon(CupertinoIcons.person_alt_circle)),
          BottomNavigationBarItem(
              label: "Settings", icon: Icon(CupertinoIcons.settings_solid)),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return screens[index];
      },
    ));
  }
}
