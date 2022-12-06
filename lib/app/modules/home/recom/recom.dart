import 'package:fastloon/app/modules/home/recom/mainimg.dart';
import 'package:fastloon/app/modules/home/recom/subimg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Recommed extends StatelessWidget {
  const Recommed({super.key});

  @override
  Widget build(BuildContext context) {
    final prcolor = Color(0xFFadc148);
    return Container(
        height: 375,
        child: ListView(
          padding: EdgeInsets.only(bottom: 18),
          primary: false,
          shrinkWrap: false,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 280,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Mainthumbimg(),
                  SizedBox(height: 2),
                  Subimages(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 15),
                    height: 110,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Arpan Unisex Salon",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          "5.6km",
                          style: TextStyle(fontSize: 12, color: Colors.white54),
                        ),
                        SizedBox(height: 8),
                        Wrap(
                          spacing: 5,
                          alignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          direction: Axis.horizontal,
                          children: [
                            Wrap(
                              children: [
                                Icon(Icons.star,
                                    size: 20, color: Color(0xFFFFB24D)),
                                Icon(Icons.star,
                                    size: 20, color: Color(0xFFFFB24D)),
                                Icon(Icons.star,
                                    size: 20, color: Color(0xFFFFB24D)),
                                Icon(Icons.star,
                                    size: 20, color: Color(0xFFFFB24D)),
                                Icon(Icons.star_half,
                                    size: 20, color: Color(0xFFFFB24D)),
                              ],
                            ),
                            Container(
                              width: 80,
                              child: Text("Closed",
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  softWrap: false,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.fade),
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
