import 'package:flutter/material.dart';

class Skeleton extends StatelessWidget {
  const Skeleton(
      {this.height, this.width, this.isRounded = true, Key? key, this.radius})
      : super(key: key);
  final double? height, width, radius;
  final bool isRounded;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius != null
              ? radius!
              : isRounded
                  ? 20
                  : 0,
        ),
        color: Colors.black.withOpacity(0.1),
      ),
      padding: const EdgeInsets.all(5),
    );
  }
}
