import 'package:flutter/material.dart';
import 'package:portfilio/base/app_color.dart';
import 'package:portfilio/base/style.dart';

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  AboutViewState createState() => AboutViewState();
}

class AboutViewState extends State<AboutView> {
  final List<String> hobbies = <String>[
    'images/coding.png',
    'images/reading.png',
    'images/gaming.png',
    'images/football.png',
  ];

  final List<Work> works = <Work>[
    Work('DOBODY GLOBAL JSC', 2016, 2017, 'Android Developer'),
    Work('ANVUI JSC', 2017, 0, 'Flutter Developer'),
    Work('ANVUI JSC', 2020, 0, 'Technical Manager'),
    Work('ANVUI JSC', 2021, 0, 'Backend Developer'),
  ];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final EdgeInsets padding = EdgeInsets.only(
      top: 64,
      left: width / 5,
      right: width / 5,
    );
    return Container(
      color: AppColor.secondaryLightColor,
      padding: padding,
      child: ListView(
        children: <Widget>[
          Text(
            'Hobbies',
            style: textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
          ),
          Container(height: 8),
          Wrap(
            children: hobbies
                .map(
                  (String hobby) => Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColor.secondaryColor,
                      border: Border.all(
                        width: 0.2,
                        color: AppColor.primaryLightColor,
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Image.asset(hobby),
                  ),
                )
                .toList(),
          ),
          Container(height: 16),
          Text(
            'Education',
            style: textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              color: AppColor.secondaryColor,
              border: Border.all(
                width: 0.2,
                color: AppColor.primaryLightColor,
              ),
            ),
            child: ListTile(
              subtitle: Text(
                'Software Engineering (2013 -2018)',
                style: textTheme.bodyLarge,
              ),
              title: Text(
                'Posts and Telecommunications Institute of Technology',
                style: textTheme.titleLarge,
              ),
            ),
          ),
          Container(height: 16),
          Text(
            'Work Experiences',
            style: textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(height: 8),
          Wrap(
            children:
                works.map((Work work) => _itemWork(context, work)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _itemWork(BuildContext context, Work work) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      width: (1920 - 1920 / 5 * 2) / 4,
      decoration: BoxDecoration(
        color: AppColor.secondaryColor,
        border: Border.all(
          color: AppColor.primaryLightColor,
          width: 0.2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '${work.startYear} - ${work.endYear == 0 ? 'now' : work.endYear}',
            style: textTheme.titleSmall!.copyWith(
              color: AppColor.primaryLightColor,
            ),
          ),
          Container(height: 8),
          Text(
            work.title,
            style: textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(height: 8),
          Text(
            work.companyName,
            style: textTheme.titleSmall!.copyWith(
              color: AppColor.primaryLightColor,
            ),
          ),
        ],
      ),
    );
  }
}

class Work {
  Work(this.companyName, this.startYear, this.endYear, this.title);

  final String companyName;
  final int startYear;
  final int endYear;
  final String title;
}
