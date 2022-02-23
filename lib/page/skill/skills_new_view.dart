import 'package:flutter/material.dart';
import 'package:portfilio/page/base_page/base_page_view.dart';

class SkillsNewView extends StatelessWidget {
  SkillsNewView({Key? key}) : super(key: key);

  final Map<String, double> technicalSkills = <String, double>{
    'Android': 0.7,
    'Swift': 0.5,
    'Flutter': 0.9,
    'MySQL': 0.5,
    'FireStore': 0.5,
    'Spring Boot': 0.7,
    'MongoDB': 0.6,
    'NodeJS': 0.7,
    'Kotlin': 0.8,
  };

  final Map<String, double> professionalSkills = <String, double>{
    'Communication': 0.8,
    'Teamwork': 0.9,
    'Creativity': 0.9,
    'Dedication': 0.8,
    'Project Management': 0.8,
  };

  @override
  Widget build(BuildContext context) {
    return BasePageView(
      icon: 'images/skills.svg',
      title: 'SKILLS',
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: SkillsWidget(
              title: 'Technical Skills',
              data: technicalSkills,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: SkillsWidget(
              title: 'Professional Skills',
              data: professionalSkills,
            ),
          ),
        ],
      ),
    );
  }
}

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);

  final String title;
  final Map<String, double> data;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: textTheme.bodyText1,
        ),
        const SizedBox(height: 16),
        ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: data.keys
              .map((e) => ItemSkill(title: e, percent: data[e] ?? 0))
              .toList(),
        ),
      ],
    );
  }
}

class ItemSkill extends StatelessWidget {
  const ItemSkill({
    Key? key,
    required this.title,
    required this.percent,
  }) : super(key: key);

  final String title;
  final double percent;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: textTheme.subtitle2),
        Slider(value: percent, onChanged: (value) {}),
      ],
    );
  }
}
