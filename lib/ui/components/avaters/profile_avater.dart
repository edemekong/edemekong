import 'package:edemekong/ui/components/display_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String url;
  final double radius;
  final Color? color;

  const ProfileAvatar({super.key, required this.url, this.radius = 120, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).colorScheme.background,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(999),
          child: DisplayImage(
            url: url,
            width: radius,
            height: radius,
            icon: Icon(
              CupertinoIcons.person_fill,
              size: radius * 0.8,
              color: Theme.of(context).unselectedWidgetColor,
            ),
          ),
        ),
      ),
    );
  }
}
