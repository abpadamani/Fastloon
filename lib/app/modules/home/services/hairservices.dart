// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HairService extends StatelessWidget {
  final String catTitle;

  const HairService({
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
                              "https://img.freepik.com/free-photo/client-doing-hair-cut-barber-shop-salon_1303-20710.jpg?w=2000",
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
                              "Hair Cut Service",
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "By Arpan Unisex Salon",
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
                                    "150₹",
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
                              "https://thumbs.dreamstime.com/b/barber-shop-men-hair-cut-barber-doing-men-fashion-hairstyle-barber-shop-men-hair-cut-barber-doing-men-fashion-hairstyle-cutting-121116704.jpg",
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
                              "Hair Cut Service",
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "By OM Unisex Salon",
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
                              "https://thumbs.dreamstime.com/b/midsection-professional-barber-giving-haircut-to-male-shop-professional-barber-giving-haircut-to-male-shop-123148733.jpg",
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
                              "Hair Cut Service",
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "By Raj Unisex Salon",
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
                              "https://www.bu.edu/files/2019/06/barber.jpg",
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
                              "Hair Cut Service",
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "By Degama and sons Unisex Salon",
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
                                    "200₹",
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
              )
            ],
          ),
        )
      ],
    );
  }
}
