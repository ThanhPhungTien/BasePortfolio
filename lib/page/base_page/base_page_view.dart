import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfilio/base/palette.dart';

class BasePageView extends StatelessWidget {
  const BasePageView({
    Key? key,
    required this.icon,
    required this.title,
    required this.child,
    this.backgroundColor = Palette.backgroundColor,
  }) : super(key: key);

  final String icon;
  final String title;
  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
      ),
      child: Container(
        color: backgroundColor,
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SvgPicture.asset(icon, height: 48, width: 48),
            const SizedBox(height: 16),
            Text(title, style: textTheme.headline5),
            const SizedBox(height: 16),
            child,
          ],
        ),
      ),
    );
  }
}
