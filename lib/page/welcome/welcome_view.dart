import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfilio/base/app_color.dart';
import 'package:portfilio/base/theme.dart';
import 'package:url_launcher/url_launcher.dart';

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
            AnimatedTextKit(
              animatedTexts: <AnimatedText>[
                TypewriterAnimatedText(
                  'I\'m Thành, Phùng Tiến',
                  textStyle: textTheme.headline2!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColor.primaryColor,
                  ),
                  speed: const Duration(milliseconds: 100),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 1000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            Container(height: 8),
            Text(
              'Mobile, Web and Backend Developer',
              style: textTheme.headline5!.copyWith(
                color: AppColor.primaryColor,
              ),
            ),
            Container(height: 8),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    launch('https://www.facebook.com/phungitienthanh/');
                  },
                  child: Image.asset(
                    'images/facebook.png',
                    color: AppColor.primaryColor,
                    height: 30,
                    width: 30,
                  ),
                ),
                Container(width: 16),
                InkWell(
                  onTap: () {
                    launch('https://www.linkedin.com/in/phungtienthanh');
                  },
                  child: Image.asset(
                    'images/linked_in.png',
                    color: AppColor.primaryColor,
                    height: 30,
                    width: 30,
                  ),
                ),
                Container(width: 16),
                InkWell(
                  onTap: () {
                    launch('https://github.com/ThanhPhungTien');
                  },
                  child: Image.asset(
                    'images/github.png',
                    color: AppColor.primaryColor,
                    height: 30,
                  ),
                ),
                Container(width: 16),
                InkWell(
                  onTap: () {
                    launch('mailto:phungtienthanh135@gmail.com');
                  },
                  child: Image.asset(
                    'images/gmail_logo.png',
                    color: AppColor.primaryColor,
                    height: 30,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
