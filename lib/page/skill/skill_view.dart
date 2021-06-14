import 'package:flutter/material.dart';
import 'package:portfilio/base/app_color.dart';
import 'package:portfilio/base/theme.dart';

class SkillView extends StatefulWidget {
  const SkillView({Key? key}) : super(key: key);

  @override
  _SkillViewState createState() => _SkillViewState();
}

class _SkillViewState extends State<SkillView> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      color: AppColor.primaryColor,
      padding: const EdgeInsets.all(64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'My Skill as Developer',
            style: textTheme.headline6!.copyWith(color: AppColor.white),
          ),
          Container(height: 16),
          Expanded(
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    color: AppColor.white,
                  ),
                  width: height / 3,
                  height: height / 2.5,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          'images/android_logo.png',
                          height: height / 3,
                          width: height / 4,
                        ),
                      ),
                      Text('Since 2016', style: textTheme.bodyText1),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColor.white,
                  ),
                  width: height / 3,
                  height: height / 2.5,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          'images/apple_logo.png',
                          height: height / 3,
                          width: height / 4,
                        ),
                      ),
                      Text('Since 2018', style: textTheme.bodyText1),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColor.white,
                  ),
                  width: height / 3,
                  height: height / 2.5,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        child: FlutterLogo(
                          size: height / 4,
                        ),
                      ),
                      Text('Since 2018', style: textTheme.bodyText1),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColor.white,
                  ),
                  width: height / 3,
                  height: height / 2.5,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          'images/spring_logo.png',
                          height: height / 3,
                          width: height / 4,
                        ),
                      ),
                      Text('Since 2021', style: textTheme.bodyText1),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
