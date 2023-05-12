// ignore_for_file: unnecessary_import, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:simpleapp/cubit.dart';
import 'package:simpleapp/signin.dart';
import 'package:simpleapp/signup.dart';

import 'MainScreenState.dart';

class MainPage extends StatelessWidget {
  TextEditingController IDvalue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitMainScreen, MainScreenState>(
        builder: (BuildContext context, state) {
          return Scaffold(
              appBar: AppBar(
                elevation: 0.0,
                backgroundColor: Colors.brown,
              ),
              body: Container(
                color: Colors.brown,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          /*Lottie.network(
                              "https://assets2.lottiefiles.com/packages/lf20_BhbCTg.json"),*/
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Keep It Green ",
                              style: TextStyle(
                                  fontFamily: 'Schyler',
                                  fontSize: 30,
                                  color: Colors.green,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: IDvalue,
                            style: TextStyle(
                                fontFamily: 'Schyler',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 2.0),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              hintText: "Your Id",
                              prefixIcon: Icon(
                                Icons.password,
                                color: Colors.white,
                              ),
                              suffixIcon: Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: MaterialButton(
                                onPressed: () {
                                  CubitMainScreen.get(context)
                                      .enterToProfile(id: IDvalue.text);

                                  /*  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignIn()),
                                  );*/
                                },
                                color: Colors.brown[300],
                                child: const Text(
                                  "Sign In",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Schyler',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          /* const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "Or ",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Schyler',
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                         Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUp()),
                              );
                            },
                            color: Colors.brown[300],
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Schyler',
                              ),
                            ),
                          ),
                        ),
                      )*/
                        ],
                      ),
                    ),
                  ),
                ),
              ));
        },
        listener: (BuildContext context, state) {});
  }
}
