import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:zainiklabassignment/app/ui/explore/controllers/explore_controller.dart';
import 'package:zainiklabassignment/app/ui/explore/widget/custom_dialog_box.dart';
import 'package:zainiklabassignment/app/ui/explore/widget/edittext_field_widget.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            EditTextFieldWidget(
              controller: TextEditingController(),
              validator: (String? value) {},
              hintext: 'Search Swipexyz.',
            ),
            30.verticalSpace,
            GetBuilder<ExploreController>(builder: (controller) {
              return Expanded(
                  child: SingleChildScrollView(
                child: StaggeredGrid.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2,
                        children: List.generate(
                            controller.productModel.value.products!.length,
                            (index) {
                          controller.position.value++;
                          if (controller.position.value == 3) {
                            return StaggeredGridTile.count(
                              crossAxisCellCount: 2,
                              mainAxisCellCount: 2,
                              child: InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CustomDialogBox(
                                              imgUrl:
                                                  '${controller.productModel.value.products![index].thumbnail}');
                                        });
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.all(
                                          3), // Border width

                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        child: Image.network(
                                          '${controller.productModel.value.products![index].thumbnail}',
                                          fit: BoxFit.fill,
                                        ),
                                      ))),
                            );
                          } else {
                            if (controller.position.value == 9) {
                              controller.position.value = 0;
                            }
                            return StaggeredGridTile.count(
                              crossAxisCellCount: 1,
                              mainAxisCellCount: 1,
                              child: InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CustomDialogBox(
                                              imgUrl:
                                                  '${controller.productModel.value.products![index].thumbnail}');
                                        });
                                  },
                                  child: Container(
                                      margin: const EdgeInsets.all(
                                          3), // Border width

                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        child: Image.network(
                                          '${controller.productModel.value.products![index].thumbnail}',
                                          fit: BoxFit.fill,
                                        ),
                                      ))),
                            );
                          }
                        }),
                      ),

              ));
            }),
          ],
        ),
      ),
    );
  }
}
