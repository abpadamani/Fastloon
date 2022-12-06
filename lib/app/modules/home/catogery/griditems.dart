import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Griditems extends StatelessWidget {
  final String title;
  final String imgurl;
  final Color bgcolor;

  const Griditems({
    super.key,
    required this.title,
    required this.imgurl,
    required this.bgcolor,
  });

  @override
  Widget build(BuildContext context) {
    final prcolor = Color(0xFFadc148);
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: prcolor.withOpacity(0.08),
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: bgcolor.withOpacity(0.4),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: prcolor.withOpacity(0.1),
                blurRadius: 10,
                offset: Offset(0, 5)),
          ],
          border: Border.all(color: prcolor.withOpacity(0.05)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 6),
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5)),
                ),
                child: Image.asset(
                  imgurl,
                  height: 70,
                  width: 50,
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
                softWrap: false,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
