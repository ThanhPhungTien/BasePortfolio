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
    final double width = MediaQuery.of(context).size.width;
    final EdgeInsets padding = EdgeInsets.only(
      top: 64,
      left: width / 5,
      right: width / 5,
    );
    return Container(
      padding: padding,
      height: height,
      width: width,
      color: AppColor.secondaryColor,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              height: 250,
              width: 250,
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                color: AppColor.secondaryLightColor,
                borderRadius: BorderRadius.circular(250),
                image: const DecorationImage(
                  image: AssetImage('images/avatar.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              duration: const Duration(milliseconds: 300),
            ),
            Container(height: 16),
            Text(
              'I\'m Thành, Phùng Tiến',
              style: textTheme.headline2!.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColor.primaryColor,
              ),
            ),
            Container(height: 8),
            Container(
              height: 100,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  DefaultTextStyle(
                    style: textTheme.headline5!.copyWith(
                      color: AppColor.primaryColor,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: <AnimatedText>[
                        RotateAnimatedText('MOBILE DEVELOPER'),
                        RotateAnimatedText('WEB DEVELOPER'),
                        RotateAnimatedText('BACKEND DEVELOPER'),
                        RotateAnimatedText('TECHNICAL MANAGER'),
                      ],
                      repeatForever: true,
                    ),
                  ),
                ],
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
