import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:eventhq_activity_feed/screens/profile_screen.dart';
import 'package:eventhq_activity_feed/screens/settings_screen.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Swathi'),
            accountEmail: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: RichText(
                text: TextSpan(
                    text: 'View Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(
                              firstName: '',
                              lastName: '',
                              email: '',
                              phone: '',
                              companyName: '',
                              linkedInURL: '',
                              jobFunction: '',
                              jobRole: '',
                            ),
                          ),
                        );
                      }),
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/swathi.jpg'),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                ListTile(
                  title: Text('Groups', style: TextStyle(fontSize: 22)),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Events', style: TextStyle(fontSize: 22)),
                  onTap: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 400, bottom: 0),
            child: Column(
              children: [
                Divider(),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings', style: TextStyle(fontSize: 22)),
                  onTap: () {
                    Navigator.push(
                        context,
                     MaterialPageRoute(
                         builder:
                         (context) => SettingsPage(),
                     )  ,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
