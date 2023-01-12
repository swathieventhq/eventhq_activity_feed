import 'package:flutter/material.dart';
class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top:260, right: 60,left: 60,bottom: 100),
        child: Text('Take a look at notifications',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
