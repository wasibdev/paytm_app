import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import 'category_card_item.dart';

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({
    Key? key,
    required this.title,
    required this.categoryItems,
    this.trailing,
  }) : super(key: key);
  final String title;
  final String? trailing;
  final List<CategoryItemWidget> categoryItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: textColorBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing == null
                    ? Container()
                    : Container(
                        margin: const EdgeInsets.only(bottom: 4),
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: bottomCardColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Text(
                          trailing!,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: darkGreyColor,
                            fontSize: 12,
                          ),
                        ),
                      ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          GridView.count(
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            crossAxisCount: 4,
            childAspectRatio: .8,
            physics: const ScrollPhysics(),
            children: categoryItems,
          ),
        ],
      ),
    );
  }
}
