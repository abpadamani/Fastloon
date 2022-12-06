import 'package:fastloon/app/modules/home/catogery/griditems.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Catogerywidget extends StatelessWidget {
  const Catogerywidget({super.key});

  @override
  Widget build(BuildContext context) {
    final prcolor = Color(0xFFadc148);
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(bottom: 15),
      child: GridView.count(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        addAutomaticKeepAlives: false,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.75,
        primary: false,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        crossAxisCount:
            MediaQuery.of(context).orientation == Orientation.portrait ? 4 : 6,
        children: [
          Griditems(
            title: "Hair",
            imgurl: "assets/images/hair_cut.png",
            bgcolor: Colors.orange,
          ),
          Griditems(
            title: "Nail",
            imgurl: "assets/images/nail.png",
            bgcolor: Colors.yellow,
          ),
          Griditems(
            title: "Skin",
            imgurl: "assets/images/skin.png",
            bgcolor: Color(0Xfbc288),
          ),
          Griditems(
            title: "Eye",
            imgurl: "assets/images/eyebrow.png",
            bgcolor: Colors.yellowAccent,
          ),
          Griditems(
            title: "Body",
            imgurl: "assets/images/massage.png",
            bgcolor: Color(0xfbc288),
          ),
          Griditems(
              title: "Beaty",
              imgurl: "assets/images/beaty.png",
              bgcolor: Colors.pinkAccent)
        ],
      ),
    );
  }
}
