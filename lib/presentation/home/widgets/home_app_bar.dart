import 'package:flutter/material.dart';
import 'package:paytm_app/core/constants.dart';

import '../../../core/colors.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({Key? key, required this.isScrolling})
      : super(key: key);

  final bool isScrolling;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: !isScrolling,
      elevation: 0,
      expandedHeight: expandedHeight.toDouble(),
      pinned: true,
      backgroundColor: appBarGradient1Color,
      leading: !isScrolling
          ? Container(
              margin: const EdgeInsets.only(left: 8),
              padding: const EdgeInsets.all(8),
              child: const CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                child: Text(
                  'ME',
                  style: TextStyle(color: textColorWhite),
                ),
              ),
            )
          : const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.arrow_back,
                color: darkBlueColor,
                size: 30,
              ),
            ),
      title: !isScrolling
          ? Image.asset(
              'assets/images/paytm_logo.png',
              height: 35,
            )
          : Container(
              color: Colors.white,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {},
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
      actions: !isScrolling
          ? const [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search_rounded,
                  color: darkBlueColor,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.chat,
                  color: darkBlueColor,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 8,
              ),
            ]
          : [],
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                appBarGradient1Color,
                appBarGradient2Color,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.network(
              'https://www.giftchill.co.uk/wp-content/uploads/2022/02/buy-gift-cards-online-with-cryptocurrency-bitcoin-shiba-inu-ethereum.png',
              height: 200,
            ),
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(20),
        child: Container(
          height: 20,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Center(
            child: Container(
              height: 4,
              width: 40,
              decoration: const BoxDecoration(
                color: darkGreyColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
