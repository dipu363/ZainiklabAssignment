import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zainiklabassignment/app/ui/home/controllers/home_controller.dart';
class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home View'),
      ),
    );
  }
}
