import 'package:dr_booking_flu/welocme_screen/widgets/animation_widget.dart';
import 'package:dr_booking_flu/welocme_screen/widgets/text_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';

class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    SystemChrome.setEnabledSystemUIOverlays([]);
    return login_state();
  }
}

class login_state extends State<login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height *.5/10,
                child: AutoSizeText(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              animation_widget(MediaQuery.of(context).size.height * 3 / 10),
              Container(
                height: MediaQuery.of(context).size.height * 3/10,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0,left: 40.0),
                      child: text_field_widget('Email Address',Icons.email),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0,left: 40.0,top: 10.0),
                      child: text_field_widget('Password',Icons.lock),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
