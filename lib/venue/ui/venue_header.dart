import 'package:app/constants/ui_constants.dart';
import 'package:flutter/material.dart';

class VenueHeader extends StatelessWidget {
  final String venueName;
  final List<String> tags;
  VenueHeader({this.venueName, this.tags});
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
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bar_image_1.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          child: Column(
            children: [
              Text(
                venueName,
                style: Theme.of(context).textTheme.headline5,
              ),
              Row(
                children: List.generate(
                  tags.length,
                  (index) => CmTag(
                    tagText: tags[index],
                    tagColor: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 50,
          right: 20,
          child: CmTag(
            tagText: 'Open now',
            tagColor: Colors.green,
          ),
        ),
        Positioned(
          top: 50,
          left: 20,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class CmTag extends StatelessWidget {
  final String tagText;
  final Color tagColor;
  CmTag({@required this.tagText, @required this.tagColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: tagColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(4)),
      child: Text(
        tagText,
        style:
            Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
      ),
    );
  }
}
