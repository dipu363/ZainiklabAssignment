// ignore_for_file: unnecessary_overrides
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zainiklabassignment/app/ui/explore/views/explore_view.dart';
import 'package:zainiklabassignment/app/ui/home/views/home_view.dart';
import 'package:zainiklabassignment/app/ui/inbox/views/inbox_view.dart';

import 'package:zainiklabassignment/app/ui/shop/views/shop_view.dart';

class DashboardController extends GetxController {
  final currentIndex = 0.obs;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
      ExploreView(),
    const InboxView(),
    const ShopView(),
  ];

  List<Widget> get widgetOptions => _widgetOptions;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onChangePage(int index) => currentIndex.value = index;
}
