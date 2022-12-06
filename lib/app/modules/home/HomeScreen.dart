import 'package:cached_network_image/cached_network_image.dart';
import 'package:fastloon/app/modules/home/addresswidget.dart';
import 'package:fastloon/app/modules/home/catogery/catogerywidget.dart';
import 'package:fastloon/app/modules/home/recom/recom.dart';
import 'package:fastloon/app/modules/home/searchbar.dart';
import 'package:fastloon/app/modules/home/services/eyeservice.dart';
import 'package:fastloon/app/modules/home/services/hairservices.dart';
import 'package:fastloon/app/modules/home/services/nailservice.dart';
import 'package:fastloon/app/modules/home/services/skinservice.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:fastloon/app/modules/home/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imglist = [
    "https://images.indianexpress.com/2020/05/GettyImages-fruit-facial_759.jpg",
    "https://www.drvenus.in/wp-content/uploads/2019/08/Pimples-treatment-min.jpg",
    "https://www.bu.edu/files/2019/06/barber.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    final prcolor = Color(0xFFadc148);
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: GNav(
          gap: 05,
          color: prcolor,
          tabBorderRadius: 10,
          activeColor: Colors.black,

          iconSize: 25,

          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          // duration: Duration(milliseconds: 400),
          tabBackgroundColor: prcolor,

          textStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
              padding: EdgeInsets.all(7),
            ),
            GButton(
              icon: CupertinoIcons.ticket,
              text: "Booking",
              padding: EdgeInsets.all(7),
            ),
            GButton(
              icon: Icons.search,
              text: "Explore",
              padding: EdgeInsets.all(7),
            ),
            GButton(
              icon: Icons.settings,
              text: "Settings",
              padding: EdgeInsets.all(7),
            ),
          ],
        ),
      ),
      drawer: Sidebar(),

      // appBar: AppBar(
      //   title: Text(
      //     "FastLoon",
      //     style: TextStyle(
      //         fontSize: 18, fontWeight: FontWeight.bold, color: prcolor),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   actions: [
      //     Builder(builder: (context) {
      //       return IconButton(
      //         onPressed: () => {},
      //         icon: Icon(Icons.notifications),
      //       );
      //     }),
      //   ],
      // ),

      body: CustomScrollView(
        primary: true,
        shrinkWrap: false,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            expandedHeight: 220,
            elevation: 0.5,
            floating: true,
            iconTheme: IconThemeData(color: Colors.white),
            title: Text(
              "Fastloon",
              style: TextStyle(
                  fontSize: 20, color: prcolor, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            actions: [
              MaterialButton(
                onPressed: () {},
                hoverElevation: 0,
                highlightElevation: 0,
                elevation: 0,
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: <Widget>[
                    Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                      size: 28,
                    ),
                  ],
                ),
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Builder(builder: (context) {
                return Stack(
                  children: <Widget>[
                    CarouselSlider(
                        items: imglist
                            .map((e) => Container(
                                  child: Image.network(
                                    e,
                                    fit: BoxFit.cover,
                                  ),
                                ))
                            .toList(),
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 4),
                          viewportFraction: 1.0,
                          height: 360,
                        )),
                  ],
                );
              }),
            ),
          ),
          SliverToBoxAdapter(
            child: Wrap(
              children: <Widget>[
                Searchbar(),
                AddressWidget(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text("Recommended for you".tr,
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                  color: Colors.white))),
                      MaterialButton(
                        onPressed: () {},
                        shape: StadiumBorder(),
                        color: prcolor.withOpacity(0.2),
                        child: Text("View All".tr,
                            style: TextStyle(color: prcolor)),
                        elevation: 0,
                      ),
                    ],
                  ),
                ),
                Recommed(),
                Container(
                  color: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text("Categories".tr,
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                  color: Colors.white))),
                      MaterialButton(
                        onPressed: () {},
                        shape: StadiumBorder(),
                        color: prcolor.withOpacity(0.2),
                        child: Text("View All".tr,
                            style: TextStyle(color: prcolor)),
                        elevation: 0,
                      ),
                    ],
                  ),
                ),
                Catogerywidget(),
                HairService(
                  catTitle: 'Hair Cut',
                ),
                Nailservice(catTitle: "Nail Art"),
                Skinservice(catTitle: "Skin "),
                Eyeservice(catTitle: "Eye"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
