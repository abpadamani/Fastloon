import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class NewProfile extends StatefulWidget {
  const NewProfile({super.key});

  @override
  State<NewProfile> createState() => _NewProfileState();
}

class _NewProfileState extends State<NewProfile> {
  File? image;
  File? image2;
  List<File>? _images;
  final _picker = ImagePicker();
  bool showspinner = false;

  Future getgalleryimage() async {
    final pickedfile =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 80);

    print(pickedfile!.path);
    if (pickedfile != null) {
      final _images = File(pickedfile.path);
      print("Path is here");
      print(image2);
      SendImage(_images);
      setState(() {});
    } else {
      "no";
    }
  }

  Future<void> SendImage(File profilepic) async {
    var uri = Uri.parse('http://192.168.29.21:8000/');
    var request = http.MultipartRequest('POST', uri);

    request.files
        .add(await http.MultipartFile.fromPath('image', profilepic.path));
    var response = await request.send();
    if (response.statusCode == 200) {
      print("Sucess");
    } else {
      print("NO sucess");
    }
  }

  @override
  Widget build(BuildContext context) {
    var size, height, width;
    size = MediaQuery.of(context).size;
    width = size.width;
    final prcolor = Color(0xFFadc148);
    return Scaffold(
      backgroundColor: Color(0xFF343030),
      appBar: AppBar(
        title: Text("Profile",
            style: TextStyle(
                fontSize: 18, color: prcolor, fontWeight: FontWeight.w900)),
        centerTitle: true,
        backgroundColor: Color(0xFF343030),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Color(0XFF333332),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Get.theme.focusColor.withOpacity(0.1),
                blurRadius: 10,
                offset: Offset(0, -5)),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: prcolor,
                child: Text("Save".tr,
                    style: Get.textTheme.bodyText2!
                        .merge(TextStyle(color: Colors.black))),
                elevation: 0,
                highlightElevation: 0,
                hoverElevation: 0,
                focusElevation: 0,
              ),
            ),
            SizedBox(width: 10),
            MaterialButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Color(0xFF343030),
              child: Text("Reset".tr,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70)),
              elevation: 0,
              highlightElevation: 0,
              hoverElevation: 0,
              focusElevation: 0,
            ),
          ],
        ).paddingSymmetric(vertical: 10, horizontal: 20),
      ),
      body: Form(
          child: ListView(
        primary: true,
        children: [
          // Image.file(File(image2.path)),
          Text("Profile details".tr,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold))
              .paddingOnly(top: 25, bottom: 0, right: 22, left: 22),
          Text("Fill the following details and save them".tr,
                  style: TextStyle(color: Colors.white38))
              .paddingSymmetric(horizontal: 22, vertical: 5),
          Container(
            padding: EdgeInsets.only(top: 8, bottom: 10, left: 20, right: 20),
            margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            decoration: BoxDecoration(
                color: Color(0xFF1f1d1d),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Get.theme.focusColor.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 5)),
                ],
                border:
                    Border.all(color: Get.theme.focusColor.withOpacity(0.05))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          "Image",
                          style: TextStyle(color: Colors.white60),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () async {},
                      shape: StadiumBorder(),
                      color: Color(0xFF343030),
                      child: Text("Reset".tr, style: TextStyle(fontSize: 12)),
                      elevation: 0,
                      hoverElevation: 0,
                      focusElevation: 0,
                      highlightElevation: 0,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 5,
                    runSpacing: 8,
                    children: [
                      customuploader(),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: image == null
                              ? Center(child: Text("No Image"))
                              : Container(
                                  child: Center(
                                    child: Image.file(
                                      File(image!.path).absolute,
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 14, left: 20, right: 20),
            margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            decoration: BoxDecoration(
                color: Color(0xFF1f1d1d),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Get.theme.focusColor.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 5)),
                ],
                border:
                    Border.all(color: Get.theme.focusColor.withOpacity(0.05))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Full Name",
                  style: TextStyle(fontSize: 14, color: Colors.white60),
                  textAlign: TextAlign.start,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  autovalidateMode: AutovalidateMode.disabled,
                  decoration: InputDecoration(
                      prefixIcon: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(CupertinoIcons.person)),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: EdgeInsets.all(0),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Arpan Padamani",
                      hintStyle:
                          TextStyle(fontSize: 18, color: Colors.white24)),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 14, left: 20, right: 20),
            margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            decoration: BoxDecoration(
                color: Color(0xFF1f1d1d),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Get.theme.focusColor.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 5)),
                ],
                border:
                    Border.all(color: Get.theme.focusColor.withOpacity(0.05))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "E-mail ",
                  style: TextStyle(fontSize: 14, color: Colors.white60),
                  textAlign: TextAlign.start,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  autovalidateMode: AutovalidateMode.disabled,
                  decoration: InputDecoration(
                      prefixIcon: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(CupertinoIcons.envelope)),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: EdgeInsets.all(0),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "arpan@arpan.com",
                      hintStyle:
                          TextStyle(fontSize: 18, color: Colors.white24)),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 14, left: 20, right: 20),
            margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            decoration: BoxDecoration(
                color: Color(0xFF1f1d1d),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Get.theme.focusColor.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 5)),
                ],
                border:
                    Border.all(color: Get.theme.focusColor.withOpacity(0.05))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Phone Number",
                  style: TextStyle(fontSize: 14, color: Colors.white60),
                  textAlign: TextAlign.start,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  autovalidateMode: AutovalidateMode.disabled,
                  decoration: InputDecoration(
                      prefixIcon: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(CupertinoIcons.phone)),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: EdgeInsets.all(0),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "+91 96625 11313",
                      hintStyle:
                          TextStyle(fontSize: 18, color: Colors.white24)),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 14, left: 20, right: 20),
            margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            decoration: BoxDecoration(
                color: Color(0xFF1f1d1d),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Get.theme.focusColor.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 5)),
                ],
                border:
                    Border.all(color: Get.theme.focusColor.withOpacity(0.05))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Address",
                  style: TextStyle(fontSize: 14, color: Colors.white60),
                  textAlign: TextAlign.start,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  autovalidateMode: AutovalidateMode.disabled,
                  decoration: InputDecoration(
                      prefixIcon: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(CupertinoIcons.map)),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: EdgeInsets.all(0),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Varachha , Surat",
                      hintStyle:
                          TextStyle(fontSize: 18, color: Colors.white24)),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 14, left: 20, right: 20),
            margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            decoration: BoxDecoration(
                color: Color(0xFF1f1d1d),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Get.theme.focusColor.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 5)),
                ],
                border:
                    Border.all(color: Get.theme.focusColor.withOpacity(0.05))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Short Bio",
                  style: TextStyle(fontSize: 14, color: Colors.white60),
                  textAlign: TextAlign.start,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  autovalidateMode: AutovalidateMode.disabled,
                  decoration: InputDecoration(
                      prefixIcon: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(CupertinoIcons.text_insert)),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: EdgeInsets.all(0),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Hair Style Lover",
                      hintStyle:
                          TextStyle(fontSize: 18, color: Colors.white24)),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget customuploader() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.black54,
        ),
        width: 100,
        height: 100,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
            ),
            onPressed: () => getgalleryimage(),
            child: Icon(
              CupertinoIcons.plus_app,
              size: 50,
            )));
  }
}
