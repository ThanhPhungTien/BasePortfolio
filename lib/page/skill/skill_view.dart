import 'package:flutter/material.dart';
import 'package:portfilio/base/app_color.dart';
import 'package:portfilio/base/theme.dart';

class SkillView extends StatefulWidget {
  const SkillView({Key? key}) : super(key: key);

  @override
  _SkillViewState createState() => _SkillViewState();
}

class _SkillViewState extends State<SkillView> {
  final List<SkillItem> data = <SkillItem>[
    SkillItem('images/android_logo.png', 'Since 2016'),
    SkillItem('images/mysql.png', 'Since 2016'),
    SkillItem('images/apple_logo.png', 'Since 2018'),
    SkillItem('images/firebase.png', 'Since 2018'),
    SkillItem('images/flutter.png', 'Since 2018'),
    SkillItem('images/firestore.png', 'Since 2019'),
    SkillItem('images/google_cloud_platform.png', 'Since 2019'),
    SkillItem('images/spring_logo.png', 'Since 2021'),
    SkillItem('images/mongodb.png', 'Since 2021'),
    SkillItem('images/nodejs.png', 'Since 2021'),
  ];
  final List<SkillItem> softSkills = <SkillItem>[
    SkillItem('images/android_logo.png', 'Since 2016'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryColor,
      padding: const EdgeInsets.all(64),
      child: ListView(
        children: <Widget>[
          Text(
            'Soft Skills',
            style: textTheme.headline6!.copyWith(color: AppColor.white),
          ),
          Container(height: 16),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: <Widget>[
              Container(
                color: AppColor.white,
                padding: const EdgeInsets.all(8),
                child: Text('Scrum Master', style: textTheme.subtitle1),
              ),
              Container(
                color: AppColor.white,
                padding: const EdgeInsets.all(8),
                child:
                    Text('Flutter team\'s leader', style: textTheme.subtitle1),
              ),
              Container(
                color: AppColor.white,
                padding: const EdgeInsets.all(8),
                child: Text('Technical manager', style: textTheme.subtitle1),
              ),
            ],
          ),
          Container(height: 16),
          Text(
            'Programing Skills',
            style: textTheme.headline6!.copyWith(color: AppColor.white),
          ),
          Container(height: 16),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: data
                .map((SkillItem item) => _itemSkill(context, item))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget _itemSkill(
    BuildContext context,
    SkillItem item,
  ) {
    final double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        color: AppColor.white,
      ),
      width: height / 4,
      height: height / 4,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              item.assetsLink,
              height: height / 4,
              width: height / 4,
            ),
          ),
          Container(height: 16),
          Text(item.since, style: textTheme.bodyText1),
        ],
      ),
    );
  }
}

class SkillItem {
  SkillItem(this.assetsLink, this.since);

  final String assetsLink;
  final String since;
}
