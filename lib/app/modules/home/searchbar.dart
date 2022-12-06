import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class Searchbar extends StatelessWidget implements PreferredSize {
  final controller = Get.put(SearchController());
  final prcolor = Color(0xFFadc148);
  final List<String> colorrs = ["FFFFFF", "0xFFadc148"];
  @override
  Widget buildsearchbar() {
    return GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 16, top: 20),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
              color: Color(0xFF343030),
              border: Border.all(
                color: Colors.white54.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(10)),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 16, left: 0, top: 3, bottom: 3),
                  child: Icon(Icons.search, size: 30, color: prcolor),
                ),
                Expanded(
                  child: Text(
                    "Search for salon service...".tr,
                    maxLines: 1,
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ),
                SizedBox(width: 8),
                // GestureDetector(
                //   onTap: () {},
                //   child: Container(
                //     padding: const EdgeInsets.only(
                //         right: 10, left: 10, top: 10, bottom: 10),
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.all(Radius.circular(8)),
                //       color: Get.theme.focusColor.withOpacity(0.1),
                //     ),
                //     child: Wrap(
                //       crossAxisAlignment: WrapCrossAlignment.center,
                //       spacing: 4,
                //       children: [
                //         // Text("Filter".tr, style: Get.textTheme.bodyText2),
                //         // Icon(
                //         //   Icons.filter_list,
                //         //   color: Get.theme.hintColor,
                //         //   size: 21,
                //         // ),
                //       ],
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ));
  }

  @override
  // TODO: implement child
  Widget get child => throw buildsearchbar();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw buildsearchbar();

  @override
  Widget build(BuildContext context) {
    return buildsearchbar();
  }
}

class SearchController {}
