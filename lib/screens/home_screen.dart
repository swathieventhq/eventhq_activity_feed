import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SaaS Insider',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
            Image.network(
                'https://media.licdn.com/dms/image/C4D0BAQEy2Ol3no4jxQ/company-logo_200_200/0/1602909333990?e=2147483647&v=beta&t=C0b37ncygrCFTLTKdzJKMUc2In0BkX_AVyBmvGe6ueQ'),
          ],
        ),
      ),
    );
  }
}
