import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fastloon/app/modules/home/addresswidget.dart';
import 'package:fastloon/app/modules/home/catogery/catogerywidget.dart';
import 'package:fastloon/app/modules/home/recom/recom.dart';
import 'package:fastloon/app/modules/home/searchbar.dart';
import 'package:fastloon/app/modules/home/services/eyeservice.dart';
import 'package:fastloon/app/modules/home/services/hairservices.dart';
import 'package:fastloon/app/modules/home/services/nailservice.dart';
import 'package:fastloon/app/modules/home/services/skinservice.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  final List<String> imglist = [
    "https://images.indianexpress.com/2020/05/GettyImages-fruit-facial_759.jpg",
    "https://www.drvenus.in/wp-content/uploads/2019/08/Pimples-treatment-min.jpg",
    "https://www.bu.edu/files/2019/06/barber.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    final prcolor = Color(0xFFadc148);
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: ((context, innerBoxIsScrolled) {
          return <Widget>[
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
                          child: Text("Recommended for you",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                  color: Colors.white))),
                      MaterialButton(
                        onPressed: () {},
                        shape: StadiumBorder(),
                        color: prcolor.withOpacity(0.2),
                        child:
                            Text("View All", style: TextStyle(color: prcolor)),
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
                          child: Text("Categories",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                  color: Colors.white))),
                      MaterialButton(
                        onPressed: () {},
                        shape: StadiumBorder(),
                        color: prcolor.withOpacity(0.2),
                        child:
                            Text("View All", style: TextStyle(color: prcolor)),
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
            ))
          ];
        }),
        body: Container(height: 10, child: Text("data1")),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
