import 'package:flutter/material.dart';
import 'package:portfilio/base/app_color.dart';
import 'package:portfilio/base/theme.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      color: AppColor.secondaryColor,
      padding: const EdgeInsets.all(64),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'I\'m Thành, Phùng Tiến',
              style: textTheme.headline2!.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColor.primaryColor,
              ),
            ),
            Container(height: 8),
            Text(
              'Mobile, Web and Backend Developer',
              style: textTheme.headline5!.copyWith(
                color: AppColor.primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
