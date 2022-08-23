import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:paytm_app/core/colors.dart';
import 'package:paytm_app/presentation/home/widgets/category_card.dart';
import 'package:paytm_app/presentation/home/widgets/home_app_bar.dart';
import 'package:paytm_app/presentation/widgets/height_8.dart';

import '../../core/constants.dart';
import '../widgets/height_16.dart';
import '../widgets/height_32.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome>
    with AfterLayoutMixin<ScreenHome> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          const HomeAppBarWidget(),
          const SliverToBoxAdapter(
            child: Height8Widget(),
          ),
          const SliverToBoxAdapter(
            child: CategoryCardWidget(
              title: 'UPI Money Transfer',
              categoryItems: upiItems,
            ),
          ),
          const SliverToBoxAdapter(
            child: Height16Widget(),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: darkBlueColor),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox.fromSize(
                  child: Image.network(
                      'https://offercdn.paytm.com/blog/2020/03/get40-voda-web-bnr.jpg',
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Height16Widget(),
          ),
          const SliverToBoxAdapter(
            child: CategoryCardWidget(
              title: 'My Paytm',
              categoryItems: myPaytmItems,
              trailing: 'UPI ID: abbcdefg@paytm',
            ),
          ),
          const SliverToBoxAdapter(
            child: Height16Widget(),
          ),
          const SliverToBoxAdapter(
            child: CategoryCardWidget(
              title: 'Ticket Booking',
              categoryItems: ticketItems,
            ),
          ),
          const SliverToBoxAdapter(
            child: Height32Widget(),
          ),
        ],
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.all(16),
        width: 160,
        decoration: const BoxDecoration(
            color: darkBlueColor,
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.qr_code,
              color: textColorWhite,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Scan Any QR',
              style:
                  TextStyle(color: textColorWhite, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    _scrollController.jumpTo(expandedHeight - collapsedHeight);
  }
}
