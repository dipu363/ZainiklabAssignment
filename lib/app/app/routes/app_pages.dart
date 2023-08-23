import 'package:get/get.dart';
import 'package:zainiklabassignment/app/ui/explore/bindings/explore_binding.dart';
import 'package:zainiklabassignment/app/ui/explore/views/explore_view.dart';
import 'package:zainiklabassignment/app/ui/home/bindings/home_binding.dart';
import 'package:zainiklabassignment/app/ui/inbox/bindings/inbox_binding.dart';
import 'package:zainiklabassignment/app/ui/inbox/views/inbox_view.dart';
import 'package:zainiklabassignment/app/ui/shop/bindings/shop_binding.dart';
import 'package:zainiklabassignment/app/ui/shop/views/shop_view.dart';
import 'package:zainiklabassignment/app/ui/splash/bindings/splash_binding.dart';
import 'package:zainiklabassignment/app/ui/splash/views/splash_view.dart';

import '../ui/dashboard/bindings/dashboard_binding.dart';
import '../ui/dashboard/views/dashboard_view.dart';
import '../ui/home/views/home_view.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASHBOARD;

  static final routes = [

    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.EXPLORE,
      page: () =>   ExploreView(),
      binding: ExploreBinding(),
    ),
    GetPage(
      name: _Paths.INDEX,
      page: () => const InboxView(),
      binding: InboxBinding(),
    ),

    GetPage(
      name: _Paths.SHOP,
      page: () => const ShopView(),
      binding: ShopdBinding(),
    ),


  ];
}
