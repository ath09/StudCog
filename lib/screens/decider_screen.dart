import 'package:flutter/material.dart';
import 'package:inheritance/configs/themes/app_colors.dart';
import 'package:inheritance/reusable_widgets.dart';
import 'package:inheritance/screens/official_signin_screen.dart';
import 'package:inheritance/screens/signin_screen.dart';
//import 'package:inheritance/utils/colors_utils.dart';
//import 'dart:io';

class decider extends StatefulWidget {
  const decider({super.key});

  @override
  State<decider> createState() => _deciderState();
}

class _deciderState extends State<decider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    gradient: mainGradient(context)),
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
                        child: Center(
                            child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        logoWidget("assets/images/logo2.png"),
                                        const SizedBox(
                                          height: 55,
                                        ),
                                        Text(
                                          textAlign: TextAlign.center,
                                          "A one-stop solution \nto all your\n college-related problems",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontFamily: 'Unbounded',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 55,
                                        ),
                                        ElevatedButton(
                                          onPressed: (() {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignInScreen()));
                                          }),
                                          child: Text(
                                            "You are a student",
                                            style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              fontFamily: 'Unbounded',
                                            ),
                                          ),
                                          style: ButtonStyle(
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              )),
                                              backgroundColor:
                                                  MaterialStateProperty
                                                      .resolveWith((states) {
                                                if (states.contains(
                                                    MaterialState.pressed)) {
                                                  return Colors.grey;
                                                }
                                                return Colors.white;
                                              })),
                                        ),
                                        const SizedBox(
                                          height: 55,
                                        ),
                                        ElevatedButton(
                                          onPressed: (() {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        OfficialSignInScreen()));
                                          }),
                                          child: Text(
                                            "You are an official",
                                            style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              fontFamily: 'Unbounded',
                                            ),
                                          ),
                                          style: ButtonStyle(
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              )),
                                              backgroundColor:
                                                  MaterialStateProperty
                                                      .resolveWith((states) {
                                                if (states.contains(
                                                    MaterialState.pressed)) {
                                                  return Colors.grey;
                                                }
                                                return Colors.white;
                                              })),
                                        ),
                                      ],
                                    )))))))));
  }
}
