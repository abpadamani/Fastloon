// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Eyeservice extends StatelessWidget {
  final String catTitle;

  const Eyeservice({
    Key? key,
    required this.catTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prcolor = Color(0xFFadc148);
    return Column(
      children: [
        Container(
          color: Color(0xFF2c2c2c),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            children: [
              Expanded(
                  child: Text(catTitle,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                          fontSize: 16,
                          color: Colors.white))),
              MaterialButton(
                onPressed: () {},
                shape: StadiumBorder(),
                color: prcolor.withOpacity(0.2),
                child: Text("View All", style: TextStyle(color: prcolor)),
                elevation: 0,
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          child: ListView(
            padding: EdgeInsets.only(bottom: 15),
            primary: false,
            shrinkWrap: false,
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 220,
                  margin: EdgeInsetsDirectional.only(
                      end: 20, start: 20, top: 20, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 03,
                          offset: Offset(0, 5)),
                    ],
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: CachedNetworkImage(
                          height: 130,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          imageUrl:
                              "https://media.istockphoto.com/id/177177852/photo/woman-on-facial-hair-removal-threading-procedure.jpg?s=612x612&w=0&k=20&c=H_Ojngs3D6SKquUtRQVBh2jc2oIhtQSWfiteQIujFn4=",
                          // placeholder: (context, url) => Image.asset(
                          //   'assets/img/loading.gif',
                          //   fit: BoxFit.cover,
                          //   width: double.infinity,
                          //   height: 100,
                          // ),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error_outline),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 10),
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Eyebrow",
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "By Diljala Salon",
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Start from",
                                  style: TextStyle(color: Colors.white54),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text(
                                    "50₹",
                                    style: TextStyle(
                                        color: prcolor,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                        fontSize: 20),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 220,
                  margin: EdgeInsetsDirectional.only(
                      end: 20, start: 20, top: 20, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 03,
                          offset: Offset(0, 5)),
                    ],
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: CachedNetworkImage(
                          height: 130,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          imageUrl:
                              "https://images.squarespace-cdn.com/content/v1/5d9ce1fcb6130c65992f5743/1628809281006-GCQEHLK9CV3631YQ2BXB/shutterstock_1169347984+%283%29.jpg",
                          // placeholder: (context, url) => Image.asset(
                          //   'assets/img/loading.gif',
                          //   fit: BoxFit.cover,
                          //   width: double.infinity,
                          //   height: 100,
                          // ),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error_outline),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 10),
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Eyebrow ",
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "By Kashish Salon",
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Start from",
                                  style: TextStyle(color: Colors.white54),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text(
                                    "80₹",
                                    style: TextStyle(
                                        color: prcolor,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                        fontSize: 20),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 220,
                  margin: EdgeInsetsDirectional.only(
                      end: 20, start: 20, top: 20, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 03,
                          offset: Offset(0, 5)),
                    ],
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: CachedNetworkImage(
                          height: 130,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          imageUrl:
                              "https://www.vaniday.com/media/resized/500/beautebrow_1_1451901464.1815.jpeg",
                          // placeholder: (context, url) => Image.asset(
                          //   'assets/img/loading.gif',
                          //   fit: BoxFit.cover,
                          //   width: double.infinity,
                          //   height: 100,
                          // ),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error_outline),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 10),
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "EyeBrow with Dora",
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "By Lissi Parlour",
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Start from",
                                  style: TextStyle(color: Colors.white54),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text(
                                    "250₹",
                                    style: TextStyle(
                                        color: prcolor,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                        fontSize: 20),
                                  ),
                                ),
                              ],
                            )
                          ],
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
    );
  }
}
