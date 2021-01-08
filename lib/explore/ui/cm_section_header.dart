import 'package:flutter/material.dart';

class CmSectionHeader extends StatelessWidget {
  final String headerTitle;
  final IconData headerIcon;
  final Function headerFunction;
  final bool hasViewAll;
  CmSectionHeader(
      {@required this.headerTitle,
      @required this.headerIcon,
      @required this.headerFunction,
      @required this.hasViewAll});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          headerTitle,
          style: Theme.of(context).textTheme.headline5,
        ),
        hasViewAll
            ? GestureDetector(
                onTap: headerFunction,
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'view all',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
