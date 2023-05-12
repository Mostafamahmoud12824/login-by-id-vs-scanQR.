// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, unused_element, prefer_const_constructors

import 'package:colours/colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Profile extends StatelessWidget {
  int flag = 1;
  var qr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          elevation: 0.0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.brown,
                child: IconButton(
                  onPressed: () {},
                  color: Colors.black38,
                  icon: Icon(Icons.settings),
                ),
              ),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          color: Colors.brown,
          child: Center(
            child: Column(
              children: [
                Text(
                  "Your Profile ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    fontFamily: 'Schyler',
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Container(
                        child: Image.network(
                          "https://546458-1766807-raikfcquaxqncofqfm.stackpathdns.com/pub/media/wordpress/d5f1425700d7460bb2aa1e1e8e1b7e49.jpg",
                          fit: BoxFit.cover,
                        ),
                        clipBehavior: Clip.hardEdge,
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 40,
                                spreadRadius: 10,
                                // offset: Offset(2,0), // Shadow position
                              ),
                            ],
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          Text(
                            "Noor Braik ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              fontFamily: 'Schyler',
                            ),
                          ),
                          Text(
                            "computer Engineer",
                            style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Schyler',
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: 30, end: 30, top: 10, bottom: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Container(
                      height: 2,
                      color: Colors.black38,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: CircularPercentIndicator(
                          percent: 0.1,
                          lineWidth: 12,
                          header: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              "Mount Collected ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Schyler',
                              ),
                            ),
                          ),
                          backgroundColor: Colors.grey,
                          progressColor: Colors.black,
                          animation: true,
                          animationDuration: 1500,
                          center: Text(
                            "10%",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Schyler',
                            ),
                          ),
                          radius: 60,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        child: CircularPercentIndicator(
                          percent: 0.7,
                          lineWidth: 12,
                          header: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              "Daily Active",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Schyler',
                              ),
                            ),
                          ),
                          backgroundColor: Colors.grey,
                          progressColor: Colors.redAccent,
                          animation: true,
                          animationDuration: 1500,
                          center: Text(
                            "70%",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Schyler',
                            ),
                          ),
                          radius: 60,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: Colors.black38,
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "2 .5\$ ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schyler',
                                ),
                              ),
                              Text(
                                "Earned",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schyler',
                                ),
                              )
                            ],
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      Card(
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "4",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schyler',
                                ),
                              ),
                              Text(
                                "Collected",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schyler',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.pinkAccent[100],
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "25",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schyler',
                                ),
                              ),
                              Text(
                                "Total",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schyler',
                                ),
                              ),
                              Text(
                                "Collections",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schyler',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          height: 50,
          width: 50,
          child: FloatingActionButton(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.qr_code_outlined,
                size: 20,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Color(0xFFFFFFDD),
                        shape: RoundedRectangleBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(20),
                          ),
                          side: BorderSide(
                            color: Theme.of(context).cardColor,
                            width: 2,
                          ),
                        ),
                        title: Column(
                          children: [
                            Text(
                              'Scan your Qr',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                fontFamily: 'Schyler',
                              ),
                            ),
                          ],
                        ),
                        content: Container(
                          child: QrImage(
                            data: qr.text,
                          ),
                        ),
                      );
                    });
              }),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
