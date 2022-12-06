import 'dart:convert';

import 'package:fastloon/app/modules/auth/authscreen.dart';
import 'package:fastloon/app/modules/home/HomeScreen.dart';
import 'package:fastloon/app/modules/profile/newprofile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PhoneVerification extends StatelessWidget {
  String phoneN;
  PhoneVerification({required this.phoneN});

  @override
  Widget build(BuildContext context) {
    TextEditingController _otpfield = TextEditingController();
    Future otpverification() async {
      final apiurl = "https://fastloon.herokuapp.com/api/auth/verify";
      try {
        var res = await http.post(Uri.parse(apiurl),
            body: {"phone": phoneN, "otp": _otpfield.text});
        print('res :${res.body}');
        final exData = jsonDecode(res.body);
        final otpstatus = exData["status"];
        print(exData);
        print(otpstatus);
        final newuser = exData["new"];
        print(newuser);
        final msg = exData["massage"];
        print(msg);
        // if (otpstatus = false) {
        //   SnackBar(
        //     content: Text(msg),
        //     duration: Duration(seconds: 7),
        //   );
        // } else {}

        // if (newuser == true) {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => NewProfile()),
        //   );
        // } else if (newuser == false) {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => HomeScreen()),
        //   );
        // }
      } catch (e) {
        print(e);
      }
    }

    final TextInputType keyboardType;
    var size, height, width;
    size = MediaQuery.of(context).size;
    width = size.width;
    final prcolor = Color(0xFFadc148);
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Verification",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
        centerTitle: true,
        backgroundColor: prcolor,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AuthScreen()),
            );
          },
          icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: ListView(
        primary: true,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                height: 180,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xFFadc148),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.green.withOpacity(0.2),
                        blurRadius: 10,
                        offset: Offset(0, 5)),
                  ],
                ),
                margin: EdgeInsets.only(bottom: 50),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "FastLoon",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Welcome to the FastLoon salons!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w100),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: Offset(0, 5)),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(width: 5, color: Colors.white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Image.asset(
                    'assets/images/f11logo.png',
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "We sent the OTP code to your phone, please check it and enter below"
                    .tr,
                style: TextStyle(fontSize: 14, color: Colors.white),
                textAlign: TextAlign.center,
              ).paddingSymmetric(horizontal: 20, vertical: 20),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 14, left: 20, right: 20),
                    margin: EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFF1f1d1d),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                              color: Get.theme.focusColor.withOpacity(0.1),
                              blurRadius: 10,
                              offset: Offset(0, 5)),
                        ],
                        border: Border.all(
                            color: Get.theme.focusColor.withOpacity(0.05))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            "OTP Code",
                            style:
                                TextStyle(fontSize: 14, color: Colors.white70),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TextFormField(
                          controller: _otpfield,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              letterSpacing: 9),
                          decoration: InputDecoration(
                            hintText: "- - - - - -",
                            hintStyle: TextStyle(
                              letterSpacing: 10,
                              fontSize: 16,
                            ),
                            contentPadding: EdgeInsets.all(0),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            focusedBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text("Resend the OTP Code Again".tr),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: prcolor.withOpacity(0.3),
                        blurRadius: 50,
                        offset: Offset(0, 1)),
                    // BoxShadow(
                    //     color: prcolor.withOpacity(0.2),
                    //     blurRadius: 13,
                    //     offset: Offset(0, 3))
                  ],
                  // borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                padding:
                    EdgeInsets.only(top: 20, bottom: 14, left: 20, right: 20),
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
                child: SizedBox(
                  width: width / 1.3,
                  child: MaterialButton(
                    onPressed: () {
                      otpverification();
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const HomeScreen()),
                      // );
                    },
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    color: prcolor,
                    disabledElevation: 0,
                    disabledColor: Get.theme.focusColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Verify",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2),
                    ),
                  ).paddingOnly(top: 15, bottom: 5, right: 20, left: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
