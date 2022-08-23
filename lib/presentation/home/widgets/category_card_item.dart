import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget(
      {Key? key, required this.title, required this.icon, this.toolTip})
      : super(key: key);
  final String title;
  final String? toolTip;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        toolTip == null
            ? Container(
                margin: const EdgeInsets.only(bottom: 4),
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: const Text(
                  '',
                  style: TextStyle(
                    color: textColorWhite,
                    fontSize: 12,
                  ),
                ),
              )
            : Container(
                margin: const EdgeInsets.only(bottom: 4),
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: toolTipColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Text(
                  toolTip!,
                  style: const TextStyle(
                    color: textColorBlack,
                    fontSize: 12,
                  ),
                ),
              ),
        CircleAvatar(
          radius: 25,
          backgroundColor: appBarGradient1Color,
          child: Icon(
            icon,
            size: 30,
            color: darkBlueColor,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            color: textColorBlack,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
