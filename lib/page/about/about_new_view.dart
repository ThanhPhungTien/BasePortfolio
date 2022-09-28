import 'package:flutter/material.dart';
import 'package:portfilio/base/palette.dart';
import 'package:portfilio/page/base_page/base_page_view.dart';

class AboutNewView extends StatefulWidget {
  const AboutNewView({Key? key}) : super(key: key);

  @override
  AboutNewViewState createState() => AboutNewViewState();
}

class AboutNewViewState extends State<AboutNewView> {
  Map<String, String> data = <String, String>{
    'Gaming': 'images/game.png',
    'Soccer': 'images/soccer.png',
    'Music': 'images/music.png',
    'Investing': 'images/bitcoin.png',
  };

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return BasePageView(
      icon: 'images/about.svg',
      title: 'ABOUT',
      backgroundColor: Palette.backgroundLightColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hello, I\'m Thành. ',
            style: textTheme.bodyText1,
          ),
          const SizedBox(height: 32),
          Text('My Interests', style: textTheme.subtitle1),
          const SizedBox(height: 16),
          Wrap(
            direction: Axis.horizontal,
            spacing: 8,
            runSpacing: 8,
            children: data.keys
                .map(
                  (e) => ItemInteresting(
                    image: data[e] ?? '',
                    title: e,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class ItemInteresting extends StatelessWidget {
  const ItemInteresting({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Palette.secondaryColor,
        borderRadius: BorderRadius.circular(8),
        shape: BoxShape.rectangle,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(image, height: 40, width: 40),
          const SizedBox(height: 8),
          Text(title, style: textTheme.bodyText2),
        ],
      ),
    );
  }
}
