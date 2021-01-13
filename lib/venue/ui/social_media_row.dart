import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VenueSocialMediaRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMediaIcon(
          icon: Icons.link,
          link: 'https://google.com',
        ),
        SocialMediaIcon(
          icon: Icons.link,
          link: 'https://google.com',
        ),
        SocialMediaIcon(
          icon: Icons.link,
          link: 'https://google.com',
        ),
      ],
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  final IconData icon;
  final String link;
  SocialMediaIcon({@required this.icon, @required this.link});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await launch(link);
      },
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Icon(
          this.icon,
          size: 25,
        ),
      ),
    );
  }
}
