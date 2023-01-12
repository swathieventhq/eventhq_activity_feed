import 'package:eventhq_activity_feed/models/events_listView_builder.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final storage = new FlutterSecureStorage();
  Future myFunction() async {
    var obj = {
      "firstName": firstNameController.text,
      "lastName": lastNameController.text,
      "linkedinURL": linkedInController.text,
      "companyName": companyNameController.text,
      "email": emailTextController.text,
      "phone": phoneController.text,
      "jobFunc": jobFunctionSelectedValue,
      "jobRol": jobRoleSelectedValue,
    };
    await storage.write(key: 'saasInsiderSettings', value: obj.toString());
   final person = await storage.read(key: 'saasInsiderSettings');
    print(obj);
  }

  @override
  void initState() {
    super.initState();
    myFunction();
  }

  Future launchWebsite() async {
    Uri url = Uri.parse("www.saasinsider.com/privacy-policy");
    await launchUrl(url);
  }

  SettingsPage() {
    jobFunctionSelectedValue = jobFunction[0];
    jobRoleSelectedValue = jobRole[0];
  }

  String? jobFunctionSelectedValue = '';
  String? jobRoleSelectedValue = '';

  bool? isChecked = false;

  final formkey = GlobalKey<FormState>();
  static TextEditingController firstNameController = TextEditingController();
  static TextEditingController lastNameController = TextEditingController();
  static TextEditingController phoneController = TextEditingController();
  static TextEditingController emailTextController = TextEditingController();
  static TextEditingController companyNameController = TextEditingController();
  static TextEditingController linkedInController = TextEditingController();

  List<String> jobFunction = [
    "Customer Success",
    "Founder",
    "Investor",
    "CXO",
    "Product",
    "Engineering",
    "Finance",
    "Marketing",
    "Operations",
    "Sales",
    "Other",
  ];

  List<String> jobRole = [
    "C Level",
    "VP/SVP",
    "Manager/Director",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0),
        child: Container(
          child: Form(
            key: formkey,
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                Text(
                  'First Name',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:0.0,top: 8.0),
                  child: TextFormField(
                    controller: firstNameController,
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Last Name',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:0.0,top: 8.0),
                  child: TextFormField(
                    controller: lastNameController,
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'LinkedIn URL',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Eg : https://www.linkedin.com/in/saasinsider',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 12),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:0.0,top: 8.0),
                  child: TextFormField(
                    controller: linkedInController,
                    decoration: InputDecoration(
                      hintText: 'LinkedIn URL',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.business),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Company Name',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:0.0,top: 8.0),
                  child: TextFormField(
                    controller: companyNameController,
                    decoration: InputDecoration(
                      hintText: 'Company Name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.business),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:0.0,top: 8.0),
                  child: TextFormField(
                    controller: emailTextController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) =>
                        emailTextController != null && GetUtils.isEmail(value!)
                            ? null
                            : 'Email not valid',
                    //     !EmailValidator.validate(emailTextController.text)
                    //   ? 'Enter a valid email'
                    //   : null,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Phone Number',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:0.0,top: 8.0),
                  child: IntlPhoneField(
                    invalidNumberMessage: 'Invalid Phone Number',
                    flagsButtonPadding: EdgeInsets.only(left: 14),
                    dropdownIconPosition: IconPosition.trailing,
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Job Function',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:0.0,top: 8.0),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    hint: Text('Please Select'),
                    //   value: selectedValue,
                    items: jobFunction.map(
                      (e) {
                        return DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        );
                      },
                    ).toList(),
                    onChanged: (val) {
                      setState(() {
                        jobFunctionSelectedValue = val as String;
                        print(jobFunctionSelectedValue);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Job Role',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:0.0,top: 8.0),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    hint: Text('Please Select'),
                    //   value: selectedValue,
                    items: jobRole.map(
                      (e) {
                        return DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        );
                      },
                    ).toList(),
                    onChanged: (val) {
                      setState(() {
                        jobRoleSelectedValue = val as String;
                        print(jobRoleSelectedValue);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isChecked,
                        onChanged: (val) {
                          setState(() {
                            isChecked = val;
                          });
                        }),
                    RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'I agree to SaaS Insider\'s ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade600,
                                decoration: TextDecoration.none)),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () => _launchUrl(
                                'https://www.saasinsider.com/privacy-policy'),
                        ),
                        TextSpan(
                            text: ' \n and ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade600,
                                decoration: TextDecoration.none)),
                        TextSpan(
                          text: 'Event Terms.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => _launchUrl1(
                                'https://www.saasinsider.com/terms'),
                        )
                      ],
                    )),
                  ],
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  'By clicking submit below, you consent to allow SaaS Insider to store and process the personal information submitted above to provide you the content / service requested.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey.shade600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60, right: 60, top: 20),
                  child: ElevatedButton(
                    onPressed: () async {
                      if (formkey.currentState!.validate()) {
                        print('send Email');
                      }
                      myFunction();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EventsPage()),
                      );
                    },
                    child: Text('SUBMIT'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(_url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> _launchUrl1(_url1) async {
    if (!await launchUrl(Uri.parse(_url1))) {
      throw 'Could not launch $_url1';
    }
  }
}

/*final isValidForm = formkey.currentState!.validate();
                      if (isValidForm) {
                         Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) =>
                                  HomePage(
                                    firstName:
                                    firstNameController.text.toString(),
                                    lastName: lastNameController.text.toString(),
                                    email: emailTextController.text.toString(),
                                    phone: phoneController.text.toString(),
                                    companyName:
                                    companyNameController.text.toString(),
                                  )
                          ),
                              (route) => false,
                        );
                        }
                      }, */
//  }

//     final isValidForm = formkey.currentState!.validate();
//     if (isValidForm) {

/*
                              ProfilePage(
                            firstName: firstNameController.text.toString(),
                            lastName: lastNameController.text.toString(),
                            email: emailTextController.text.toString(),
                            phone: phoneController.text.toString(),
                            companyName: companyNameController.text.toString(),
                            linkedInURL: linkedInController.text.toString(),
                            jobFunction: jobFunctionSelectedValue.toString(),
                            jobRole: jobRoleSelectedValue.toString(),
                          ),

                          */
