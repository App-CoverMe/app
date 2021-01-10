import 'package:flutter/material.dart';

class VenueHeader extends StatelessWidget {
  final String venueName;
  VenueHeader({this.venueName});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ShaderMask(
          //The effect of the shader mask could also be achieved with a Stack
          //but this has more flexibility.
          //https://stackoverflow.com/questions/55102880/flutter-image-fade-out-at-bottom-gradient
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.transparent],
            ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
          },
          blendMode: BlendMode.dstIn,
          child: Container(
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bar_image_1.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          child: Text(
            venueName,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ],
    );
  }
}
