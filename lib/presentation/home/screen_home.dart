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

class _ScreenHomeState extends State<ScreenHome> {
  final ScrollController _controller = ScrollController();
  bool isScrolling = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_scrollListener);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  _scrollListener() {
    if (_controller.offset > 150) {
      setState(() {
        isScrolling = true;
      });
    } else {
      setState(() {
        isScrolling = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: CustomScrollView(
        controller: _controller,
        slivers: [
          HomeAppBarWidget(
            isScrolling: isScrolling,
          ),
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
      floatingActionButton: isScrolling
          ? AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOut,
              width: 60,
              height: 60,
              child: FloatingActionButton(
                backgroundColor: darkBlueColor,
                onPressed: () {},
                child: const Icon(
                  Icons.qr_code,
                  color: textColorWhite,
                ),
              ),
            )
          : AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
              width: 180,
              height: 60,
              child: FloatingActionButton.extended(
                backgroundColor: darkBlueColor,
                onPressed: () {},
                icon: const Icon(
                  Icons.qr_code,
                  color: textColorWhite,
                ),
                label: const Center(
                  child: Text(
                    "Scan Any QR",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
