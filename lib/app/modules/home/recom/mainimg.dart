import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mainthumbimg extends StatelessWidget {
  const Mainthumbimg({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: CachedNetworkImage(
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
            imageUrl:
                "https://media.istockphoto.com/id/1288801785/photo/barber-shop.jpg?s=612x612&w=0&k=20&c=R4e9Ts7MaRN2DaGTebLtiu_ThxRk2cGUefbQneL90ro=",
            errorWidget: (context, url, error) => Icon(Icons.error_outline),
          ),
        )
      ],
    );
  }
}
