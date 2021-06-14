import 'package:flutter/material.dart';
import 'package:portfilio/base/app_color.dart';
import 'package:portfilio/base/theme.dart';

class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  _AboutViewState createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.secondaryLightColor,
      padding: const EdgeInsets.all(64),
      child: Column(
        children: <Widget>[
          Text(
            'Tốt nghiệp',
            style: textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
