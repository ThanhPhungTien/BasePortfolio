import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../base/palette.dart';
import '../../base/ripple_animation.dart';

class WelcomeNewView extends StatefulWidget {
  const WelcomeNewView({super.key});

  @override
  WelcomeNewViewState createState() => WelcomeNewViewState();
}

class WelcomeNewViewState extends State<WelcomeNewView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.jpeg'),
          fit: BoxFit.cover,
          opacity: 0.1,
        ),
      ),
      child: const Center(child: AvatarView()),
    );
  }
}

class AvatarView extends StatelessWidget {
  const AvatarView({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Stack(
          fit: StackFit.loose,
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 200),
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Palette.secondaryColor,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 150),
                  Text(
                    'PHÙNG TIẾN THÀNH',
                    style: textTheme.bodyLarge,
                  ),
                  Text(
                    'Software Engineer',
                    style: textTheme.bodySmall,
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        onTap: () => launchUrl(Uri.parse(
                          'https://www.facebook.com/phungitienthanh/',
                        )),
                        child: SvgPicture.asset(
                          'images/facebook.svg',
                          colorFilter:
                              ColorFilter.mode(Palette.white, BlendMode.srcIn),
                          height: 30,
                          width: 30,
                        ),
                      ),
                      Container(width: 16),
                      InkWell(
                        onTap: () => launchUrl(Uri.parse(
                          'https://www.linkedin.com/in/phungtienthanh',
                        )),
                        child: SvgPicture.asset(
                          'images/linkedin.svg',
                          colorFilter:
                              ColorFilter.mode(Palette.white, BlendMode.srcIn),
                          height: 30,
                          width: 30,
                        ),
                      ),
                      Container(width: 16),
                      InkWell(
                        onTap: () => launchUrl(
                            Uri.parse('https://github.com/ThanhPhungTien')),
                        child: SvgPicture.asset(
                          'images/github.svg',
                          colorFilter:
                              ColorFilter.mode(Palette.white, BlendMode.srcIn),
                          height: 30,
                        ),
                      ),
                      Container(width: 16),
                      InkWell(
                        onTap: () => launchUrl(
                            Uri.parse('mailto:phungtienthanh135@gmail.com')),
                        child: SvgPicture.asset(
                          'images/gmail.svg',
                          colorFilter:
                              ColorFilter.mode(Palette.white, BlendMode.srcIn),
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            RipplesAnimation(
              color: Palette.primaryColor,
              size: 100,
              child: Container(
                height: 250,
                width: 250,
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: Palette.secondaryLightColor,
                  borderRadius: BorderRadius.circular(250),
                  image: const DecorationImage(
                    image: AssetImage('images/avatar.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
