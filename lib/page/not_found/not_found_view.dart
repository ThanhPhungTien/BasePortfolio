import 'package:flutter/material.dart';

class NotFoundView extends StatefulWidget {
  const NotFoundView({Key? key}) : super(key: key);

  @override
  _NotFoundViewState createState() => _NotFoundViewState();
}

class _NotFoundViewState extends State<NotFoundView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('404 NOT FOUND'),
      ),
    );
  }
}
