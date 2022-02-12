import 'package:flutter/material.dart';
import 'package:portfilio/page/base_page/base_page_view.dart';

import '../../base/palette.dart';

class ResumeView extends StatefulWidget {
  const ResumeView({Key? key}) : super(key: key);

  @override
  _ResumeViewState createState() => _ResumeViewState();
}

class _ResumeViewState extends State<ResumeView> {
  @override
  Widget build(BuildContext context) {
    return BasePageView(
      icon: 'images/resume.svg',
      title: 'RESUME',
      child: Container(),
      backgroundColor: Palette.backgroundLightColor,
    );
  }
}
