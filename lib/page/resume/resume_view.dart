import 'package:flutter/material.dart';
import 'package:portfilio/page/base_page/base_page_view.dart';

import '../../base/palette.dart';

class ResumeView extends StatefulWidget {
  const ResumeView({Key? key}) : super(key: key);

  @override
  _ResumeViewState createState() => _ResumeViewState();
}

class _ResumeViewState extends State<ResumeView> {
  List<Widget> education = [
    const Text("Education"),
    const SizedBox(height: 16),
    const ItemResume(
      time: '2013 - 2018',
      title: 'Posts and Telecommunications Institute of Technology',
      content: '',
    ),
  ];

  List<Widget> work = [
    const Text("Work Experience"),
    const SizedBox(height: 16),
    const ItemResume(
      time: '2016 - 2018',
      title: 'DOBODY GLOBAL',
      content: '* Android Dev',
    ),
    const ItemResume(
      time: '2018 - now',
      title: 'ANVUI Technology JSC',
      content: '* Flutter Dev\n* Backend Dev\n* Web Dev\n* Technical Manager',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BasePageView(
      icon: 'images/resume.svg',
      title: 'RESUME',
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: education,
            ),
          ),
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: const VerticalDivider(color: Palette.primaryColor),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: work,
            ),
          ),
        ],
      ),
      backgroundColor: Palette.backgroundLightColor,
    );
  }
}

class ItemResume extends StatelessWidget {
  const ItemResume({
    Key? key,
    required this.time,
    required this.title,
    required this.content,
  }) : super(key: key);

  final String time;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Card(
      color: Palette.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [Text(title, style: textTheme.subtitle2)]),
            const SizedBox(height: 4),
            Text(
              time,
              style: textTheme.caption!.copyWith(
                color: Palette.primaryColor,
              ),
            ),
            const SizedBox(height: 4),
            Text(content, style: textTheme.bodyText1),
          ],
        ),
      ),
    );
  }
}
