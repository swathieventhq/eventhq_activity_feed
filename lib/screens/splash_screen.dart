
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:eventhq_activity_feed/screens/settings_screen.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:eventhq_activity_feed/widgets/bottom_navigation_bar_widget.dart';
import 'package:eventhq_activity_feed/components/streams_feed.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  final storage = new FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    Timer( Duration(seconds: 3), () async {
      if(storage.read == null){
  await Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SettingsPage(),
      ));
      }else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => StreamFeeds(),// BottomNavigationBarWidget(),
            ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.cyan,
          child: Center(child: Text('splashscreeen',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)),
        ),
      ),
    );
  }
}
