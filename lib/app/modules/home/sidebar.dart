import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  final prcolor = Color(0xFFadc148);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          GestureDetector(
            onTap: () {},
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).hintColor.withOpacity(0.1),
              ),
              accountName: Text(
                "Account Name",
                style: TextStyle(color: prcolor, fontSize: 16),
              ),
              accountEmail: Text(
                "Account Email",
                style: TextStyle(color: Colors.white54, fontSize: 14),
              ),
              currentAccountPicture: Stack(
                children: [
                  SizedBox(
                    width: 180,
                    height: 180,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                      child: CachedNetworkImage(
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTsDpvHntBd9u9K_wJIOeQxTyfHlE8PNmhUUOm-7TK&s",
                        errorWidget: (context, url, error) =>
                            Icon(Icons.error_outline),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.home,
                    size: 20,
                    color: Colors.white,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    width: 1,
                    height: 24,
                    color: Colors.white30,
                  ),
                  Expanded(
                    child: Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.location,
                    size: 20,
                    color: Colors.white70,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    width: 1,
                    height: 24,
                    color: Colors.white30,
                  ),
                  Expanded(
                    child: Text(
                      "Explore Salons",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.folder,
                    size: 20,
                    color: Colors.white70,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    width: 1,
                    height: 24,
                    color: Colors.white30,
                  ),
                  Expanded(
                    child: Text(
                      "Catogeries",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.ticket,
                    size: 20,
                    color: Colors.white70,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    width: 1,
                    height: 24,
                    color: Colors.white30,
                  ),
                  Expanded(
                    child: Text(
                      "Bookings",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Row(
                children: [
                  Icon(
                    Icons.notifications,
                    size: 20,
                    color: Colors.white70,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    width: 1,
                    height: 24,
                    color: Colors.white30,
                  ),
                  Expanded(
                    child: Text(
                      "Notifications",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
