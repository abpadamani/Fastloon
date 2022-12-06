import 'dart:convert';
import 'dart:ui';
import 'package:fastloon/app/modules/auth/verification.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:http/http.dart' as http;
import '../../global_widgets/circular_loading_widget.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final prcolor = Color(0xFFadc148);

  TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // var controller;
    // controller.loginFormKey = new GlobalKey<FormState>();

    Future submitPhoneNumber() async {
      final apiurl = "https://fastloon.herokuapp.com/api/auth";
      try {
        var res = await http.post(Uri.parse(apiurl),
            body: {"phone": _phoneNumberController.text});
        print('res :${res.body}');
        final exData = jsonDecode(res.body);
        final vrdata = exData["status"];
        print(vrdata);
        if (vrdata) {
        } else {}
      } catch (e) {
        print(e);
      }
    }

    var size, height, width;
    size = MediaQuery.of(context).size;
    width = size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFadc148),
          centerTitle: true,
          title: Text(
            "Let's Go...",
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          elevation: 0,
        ),
        body: Form(
            child: ListView(
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
            Container(
              padding:
                  EdgeInsets.only(top: 20, bottom: 14, left: 20, right: 20),
              margin: EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
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
                  Text(
                    "Phone Number",
                    style: TextStyle(fontSize: 14, color: Colors.white60),
                    textAlign: TextAlign.start,
                  ),
                  IntlPhoneField(
                    controller: _phoneNumberController,
                    initialCountryCode: 'IN',
                    showDropdownIcon: false,
                    textAlign: TextAlign.start,
                    disableLengthCheck: true,
                    style: TextStyle(color: Colors.white),
                    autovalidateMode: AutovalidateMode.disabled,
                    decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        contentPadding: EdgeInsets.all(0),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        focusedBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "96625 11313",
                        hintStyle:
                            TextStyle(fontSize: 18, color: Colors.white24)),
                  ),
                ],
              ),
            ),
          ],
        )),
        bottomNavigationBar: Row(
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
              margin: EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
              child: SizedBox(
                width: width / 1.3,
                child: MaterialButton(
                  onPressed: () {
                    submitPhoneNumber();
                    //print(_phoneNumberController.value);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhoneVerification(
                              phoneN: _phoneNumberController.text)),
                    );
                  },
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  color: prcolor,
                  disabledElevation: 0,
                  disabledColor: Get.theme.focusColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ).paddingOnly(top: 15, bottom: 5, right: 20, left: 20),
              ),
            )
          ],
        ));
  }
}
