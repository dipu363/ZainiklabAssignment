import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/app/ui/explore/controllers/explore_controller.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            initialBinding: GetBindings(),
            debugShowCheckedModeBanner: false,
            title: "Application",
            theme: ThemeData(
              primarySwatch: Colors.blue,
              useMaterial3: true,
            ),
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        }),
  );
}

class GetBindings extends Bindings {
  @override
  void dependencies() {
   /* Get.lazyPut<ExploreController>(
          () => ExploreController()
    );*/
    Get.put(ExploreController());

  }
}



