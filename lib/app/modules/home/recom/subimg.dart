import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Subimages extends StatelessWidget {
  const Subimages({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 2,
      children: [
        CachedNetworkImage(
          height: 60,
          width: 68.5,
          fit: BoxFit.cover,
          imageUrl:
              "https://media.istockphoto.com/id/134052142/photo/hair-salon-situation.jpg?s=612x612&w=0&k=20&c=HM4Tl3ATijpIS1Rv097UHwmZ3OfmqGXkniNLuTCqB0A=",
          errorWidget: (context, url, error) => Icon(Icons.error_outline),
        ),
        CachedNetworkImage(
          height: 60,
          width: 68.5,
          fit: BoxFit.cover,
          imageUrl:
              "https://images.unsplash.com/photo-1521590832167-7bcbfaa6381f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHNhbG9ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
          errorWidget: (context, url, error) => Icon(Icons.error_outline),
        ),
        CachedNetworkImage(
          height: 60,
          width: 68.5,
          fit: BoxFit.cover,
          imageUrl:
              "https://www.bodycraft.co.in/wp-content/uploads/salon-4-mens-styling.png",
          errorWidget: (context, url, error) => Icon(Icons.error_outline),
        ),
        CachedNetworkImage(
          height: 60,
          width: 68.5,
          fit: BoxFit.cover,
          imageUrl:
              "https://content.jdmagicbox.com/comp/bardoli/n8/0261px261.x261.200319142911.w9n8/catalogue/harshils-unisex-salon-bardoli-tozvqwy9el.jpg?clr=666600",
          errorWidget: (context, url, error) => Icon(Icons.error_outline),
        )
      ],
    );
  }
}
