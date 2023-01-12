import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({

    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.companyName,
    required this.linkedInURL,
    required this.jobFunction,
    required this.jobRole,

  });

  String  firstName;
  String  lastName;
  String email;
  String  phone;
  String companyName;
  String linkedInURL;
  String jobFunction;
  String jobRole;


  @override
  Widget build(BuildContext context) {
    print(email);
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "First Name: , ${firstName}",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            Text(
              "Last Name: , ${lastName}",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            Text(
              "Email: , ${email}",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            Text(
              "Phone: , ${phone}" ,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            Text(
              "Company Name: , ${companyName}" ,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            Text(
              "LinkedIn URL: , ${linkedInURL}" ,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            Text(
              "Job Function: , ${jobFunction}" ,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            Text(
              "Job Role: , ${jobRole}",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60,right: 60),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go Back'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
