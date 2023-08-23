
import 'package:flutter/material.dart';


import 'package:get/get.dart';
import 'package:zainiklabassignment/app/utils/appConstants/resources.dart';

import '../../../utils/app_colors.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
 DashboardView({Key? key}) : super(key: key);

  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: Obx(() => controller.widgetOptions[controller.currentIndex.value]),

      ),
      floatingActionButton: FloatingActionButton(
        shape:  const CircleBorder(),
        backgroundColor: secondaryColor,
        onPressed: () {  },
      child: const Icon(Icons.add,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 0,
        child: SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
              ()=> Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                          onPressed: (){
                            controller.onChangePage(0);
                            controller.widgetOptions[controller.currentIndex.value];
                            controller.currentIndex.value;
                            controller.update();
                          },
                        minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            R.ASSETS_IMAGE_HOME,
                            height: 20,
                            width: 20,
                            color: controller.currentIndex.value == 0 ?primaryColor:secondaryColor.withOpacity(.3),

                          ),
                          Text('Home',style: TextStyle(color: controller.currentIndex.value == 0 ?primaryColor:secondaryColor.withOpacity(.2) ),)
                        ],
                      ),

                      ),
                    MaterialButton(
                          onPressed: (){
                            controller.onChangePage(1);
                            controller.widgetOptions[controller.currentIndex.value];
                            controller.currentIndex.value;
                            controller.update();
                          },
                        minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            R.ASSETS_IMAGE_EXPLORE,
                            height: 20,
                            width: 20,
                            color: controller.currentIndex.value == 1 ?primaryColor:secondaryColor.withOpacity(.3),

                          ),
                          Text('Explore',style: TextStyle(color: controller.currentIndex.value == 1 ?primaryColor:secondaryColor.withOpacity(.2) ),)
                        ],
                      ),

                      ),

                  ],
                ),
              ),
              Obx(
              ()=> Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                          onPressed: (){
                            controller.onChangePage(2);
                            controller.widgetOptions[controller.currentIndex.value];
                            controller.currentIndex.value;
                            controller.update();
                          },
                        minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            R.ASSETS_IMAGE_MESSAGE,
                            height: 20,
                            width: 20,
                            color: controller.currentIndex.value == 2 ?primaryColor:secondaryColor.withOpacity(.3),

                          ),
                          Text('Inbox',style: TextStyle(color: controller.currentIndex.value == 2 ?primaryColor:secondaryColor.withOpacity(.2) ),)
                        ],
                      ),

                      ),
                    MaterialButton(
                          onPressed: (){
                            controller.onChangePage(3);
                            controller.widgetOptions[controller.currentIndex.value];
                            controller.currentIndex.value;
                            controller.update();
                          },
                        minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            R.ASSETS_IMAGE_SHOPPING,
                            height: 20,
                            width: 20,
                            color: controller.currentIndex.value == 3 ?primaryColor:secondaryColor.withOpacity(.3),

                          ),
                          Text('Shop',style: TextStyle(color: controller.currentIndex.value == 3 ?primaryColor:secondaryColor.withOpacity(.2) ),)
                        ],
                      ),

                      ),

                  ],
                ),
              ),
            ],
          ),
        ),

      )

    );
  }
}
