import 'package:flutter/material.dart';
import 'package:portfilio/base/app_color.dart';
import 'package:portfilio/base/theme.dart';

class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  _AboutViewState createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  final List<String> hobbies = <String>[
    'Reading book',
    'Gaming',
    'Football',
    'Coding',
  ];

  final List<Work> works = <Work>[
    Work('DOBODY GLOBAL JSC', 2016, 2017, 'Android Developer'),
    Work('ANVUI JSC', 2017, 0, 'Flutter Developer and Technical manager'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.secondaryLightColor,
      padding: const EdgeInsets.all(64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Hobbies',
              style: textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
              )),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: hobbies.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 8),
                child: Text(hobbies[index], style: textTheme.bodyText1),
              );
            },
          ),
          Container(height: 16),
          Text('Education',
              style: textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
              )),
          ListTile(
            subtitle: Text(
              'Software engineering (2013 -2018)',
              style: textTheme.bodyText1,
            ),
            title: Text(
              'Posts and Telecommunications Institute of Technology',
              style: textTheme.bodyText1,
            ),
          ),
          Container(height: 16),
          Text(
            'Career',
            style: textTheme.headline5!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: works.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  works[index].companyName,
                  style: textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      '${works[index].startYear} - ${works[index].endYear == 0 ? 'nay' : works[index].endYear}',
                      style: textTheme.subtitle1,
                    ),
                    Text(
                      works[index].title,
                      style: textTheme.subtitle1,
                    ),
                  ],
                ),
              );
            },
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
