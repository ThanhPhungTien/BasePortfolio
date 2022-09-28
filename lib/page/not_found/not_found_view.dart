import 'package:flutter/material.dart';

class NotFoundView extends StatefulWidget {
  const NotFoundView({Key? key}) : super(key: key);

  @override
  NotFoundViewState createState() => NotFoundViewState();
}

class NotFoundViewState extends State<NotFoundView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('404 NOT FOUND'),
      ),
    );
  }
}
