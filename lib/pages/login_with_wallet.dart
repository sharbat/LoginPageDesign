import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_one/pages/widgets/header_widget.dart';

import '../common/theme_helper.dart';

class LoginWithWallet extends StatefulWidget {
  const LoginWithWallet({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginWithWalletState();
  }
}

class LoginWithWalletState extends State<LoginWithWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Column(
                  children: [
                    SizedBox(height: 100),
                    Container(
                      child: TextFormField(
                        decoration: ThemeHelper().textInputDecoration(
                            'Public address', 'Enter your public address'),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: TextFormField(
                        decoration: ThemeHelper().textInputDecoration(
                            'Secret phrase', 'Enter your secret phrase'),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: TextFormField(
                        decoration: ThemeHelper()
                            .textInputDecoration('Email', 'Enter your Email '),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: TextFormField(
                        decoration: ThemeHelper()
                            .textInputDecoration('Number', 'Enter your number'),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: TextFormField(
                        decoration: ThemeHelper().textInputDecoration(
                            'Password', 'Enter your password'),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      decoration: ThemeHelper().buttonBoxDecoration(context),
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
