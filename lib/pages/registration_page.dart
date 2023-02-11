import 'package:flutter/material.dart';
import 'package:project_one/common/theme_helper.dart';
import 'package:project_one/pages/profile_page.dart';
import 'package:project_one/pages/widgets/header_widget.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<RegistrationPage> {
  final Key _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: 150,
            child: HeaderWidget(150, true, Icons.person_add_alt_1_rounded),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
            padding: EdgeInsets.fromLTRB(25, 50, 25, 10),
            child: Column(children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: 100),
                    Container(
                      child: TextFormField(
                        decoration: ThemeHelper().textInputDecoration(
                            'Name', 'Enter your full name'),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: TextFormField(
                        decoration: ThemeHelper().textInputDecoration(
                            'Company name', 'Enter company name'),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: TextFormField(
                        decoration: ThemeHelper().textInputDecoration(
                            'Account type', 'Choose account type'),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: TextFormField(
                        obscureText: true,
                        decoration: ThemeHelper().textInputDecoration(
                            'Password', 'Enter your password'),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: TextFormField(
                        obscureText: true,
                        decoration: ThemeHelper().textInputDecoration(
                            'Password', 'Confirm your password'),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      decoration: ThemeHelper().buttonBoxDecoration(context),
                      child: ElevatedButton(
                        style: ThemeHelper().buttonStyle(),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          child: Text(
                            'Register'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
