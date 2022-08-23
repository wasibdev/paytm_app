import 'package:flutter/material.dart';

import '../presentation/home/widgets/category_card_item.dart';

var collapsedHeight = AppBar().preferredSize.height;
const expandedHeight = 300;

const List<CategoryItemWidget> upiItems = [
  CategoryItemWidget(
    title: 'Scan & Pay',
    icon: Icons.qr_code_scanner,
    toolTip: 'asdasda',
  ),
  CategoryItemWidget(title: 'To Mobile', icon: Icons.contact_page),
  CategoryItemWidget(title: 'To Self', icon: Icons.person),
  CategoryItemWidget(title: 'To Bank A/c', icon: Icons.house),
];
const List<CategoryItemWidget> myPaytmItems = [
  CategoryItemWidget(title: 'Credit Cards', icon: Icons.credit_card),
  CategoryItemWidget(
    title: 'Movie Tickets',
    icon: Icons.movie,
    toolTip: 'Offer Available',
  ),
  CategoryItemWidget(title: 'Cashback &\n Offers', icon: Icons.person),
  CategoryItemWidget(title: 'All Services', icon: Icons.apps),
];
const List<CategoryItemWidget> ticketItems = [
  CategoryItemWidget(title: 'Flight Tickets', icon: Icons.flight),
  CategoryItemWidget(title: 'Bus Tickets', icon: Icons.bus_alert_sharp),
  CategoryItemWidget(title: 'Train Tickets', icon: Icons.train),
  CategoryItemWidget(title: 'Buy FASTag', icon: Icons.car_crash),
  CategoryItemWidget(title: 'Credit Cards', icon: Icons.car_crash),
  CategoryItemWidget(
    title: 'Metro Tickets',
    icon: Icons.train,
    toolTip: '20% Off',
  ),
  CategoryItemWidget(title: 'Cashback &\n Offers', icon: Icons.person),
  CategoryItemWidget(title: 'All Services', icon: Icons.apps),
];
