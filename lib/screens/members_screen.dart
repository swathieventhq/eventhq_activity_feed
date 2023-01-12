import 'package:flutter/material.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({Key? key}) : super(key: key);

  @override
  State<MembersPage> createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Members',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),
    );
  }
}
