import 'package:flutter/material.dart';
import 'package:portfilio/base/palette.dart';
import 'package:portfilio/page/about/about_new_view.dart';
import 'package:portfilio/page/contact/contact_view.dart';
import 'package:portfilio/page/resume/resume_view.dart';
import 'package:portfilio/page/skill/skills_new_view.dart';
import 'package:portfilio/page/welcome/welcome_new_view.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeNewView extends StatefulWidget {
  const HomeNewView({Key? key}) : super(key: key);

  @override
  HomeNewViewState createState() => HomeNewViewState();
}

class HomeNewViewState extends State<HomeNewView> {
  final ItemScrollController _controller = ItemScrollController();

  final List<Widget> _widgets = <Widget>[
    const WelcomeNewView(),
    const AboutNewView(),
    SkillsNewView(),
    const ResumeView(),
    const ContactView(),
    const FooterView(),
  ];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HeaderView(clickMenu: (int value) => moveToIndex(value)),
      ),
      body: ScrollablePositionedList.builder(
        itemScrollController: _controller,
        itemBuilder: (BuildContext context, int index) {
          return _widgets[index];
        },
        itemCount: _widgets.length,
      ),
      // floatingActionButton:  FloatingActionButton(
      //
      //   onPressed: () {},
      //   backgroundColor: Palette.primaryColor,
      //   child: const Icon(Icons.arrow_upward_rounded),
      // ),
    );
  }

  moveToIndex(int index) => _controller.scrollTo(
        index: index,
        duration: const Duration(milliseconds: 500),
      );
}

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key, required this.clickMenu}) : super(key: key);

  final ValueChanged<int> clickMenu;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            'Thành',
            style: textTheme.headline6!.copyWith(
              color: Palette.primaryColor,
            ),
          ),
        ),

        ButtonBar(
          children: [
            TextButton(
              onPressed: () => clickMenu(0),
              child: const Text('HOME'),
            ),
            TextButton(
              onPressed: () => clickMenu(1),
              child: const Text('ABOUT'),
            ),
            TextButton(
              onPressed: () => clickMenu(2),
              child: const Text('SKILLS'),
            ),
            TextButton(
              onPressed: () => clickMenu(3),
              child: const Text('RESUME'),
            ),
            TextButton(
              onPressed: () => clickMenu(4),
              child: const Text('CONTACT'),
            ),
          ],
        ),

      ],
    );
  }

  void moveTo(int index) {}
}

class FooterView extends StatelessWidget {
  const FooterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            '© Copyright 2022 Phùng Tiến Thành. All rights reserved.',
            style: textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
