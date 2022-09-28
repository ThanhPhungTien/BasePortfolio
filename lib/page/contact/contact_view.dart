import 'package:flutter/material.dart';
import 'package:portfilio/page/base_page/base_page_view.dart';

class ContactView extends StatefulWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  ContactViewState createState() => ContactViewState();
}

class ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return BasePageView(
      icon: 'images/contact.svg',
      title: 'CONTACT',
      child: Container(),
    );
  }
}
