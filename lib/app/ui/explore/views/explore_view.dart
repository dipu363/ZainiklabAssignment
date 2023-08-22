import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zainiklabassignment/app/ui/explore/widget/edittext_field_widget.dart';
import 'package:zainiklabassignment/app/utils/app_colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
              hintext: 'Search Swipexyz.....',
            ),
            30.verticalSpace,
            Expanded(
              child: InkWell(
                onTap: (){
                  alertDialog();
                },
                child: Card(
                  child: SingleChildScrollView(
                    child: Container(
                      color: generalWhite,
                      child: Column(
                        children: [
                          StaggeredGrid.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0,
                            children: [
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: imageContainer(
                                    "https://cdn.pixabay.com/photo/2018/03/23/09/23/flowers-3253187_640.jpg"),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: imageContainer(
                                    "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: imageContainer(
                                    "https://previews.123rf.com/images/xalanx/xalanx1608/xalanx160800039/60846664-nature-professionnelle-prise-de-vue-avec-cam%C3%A9ra-sur-tr%C3%A9pied-photographe.jpg"),
                              ),
                            ],
                          ),
                          4.verticalSpace,
                          StaggeredGrid.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0,
                            children: [
                              StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 2,
                                child: imageContainer(
                                    "https://cdn.pixabay.com/photo/2018/03/23/09/23/flowers-3253187_640.jpg"),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: imageContainer(
                                    "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: imageContainer(
                                    "https://previews.123rf.com/images/xalanx/xalanx1608/xalanx160800039/60846664-nature-professionnelle-prise-de-vue-avec-cam%C3%A9ra-sur-tr%C3%A9pied-photographe.jpg"),
                              ),
                            ],
                          ),
                          4.verticalSpace,
                          StaggeredGrid.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0,
                            children: [
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: imageContainer(
                                    "https://cdn.pixabay.com/photo/2018/03/23/09/23/flowers-3253187_640.jpg"),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: imageContainer(
                                    "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: imageContainer(
                                    "https://previews.123rf.com/images/xalanx/xalanx1608/xalanx160800039/60846664-nature-professionnelle-prise-de-vue-avec-cam%C3%A9ra-sur-tr%C3%A9pied-photographe.jpg"),
                              ),
                            ],
                          ),
                          4.verticalSpace,
                          StaggeredGrid.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0,
                            children: [
                              StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 2,
                                child: imageContainer(
                                    "https://cdn.pixabay.com/photo/2018/03/23/09/23/flowers-3253187_640.jpg"),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: imageContainer(
                                    "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: imageContainer(
                                    "https://previews.123rf.com/images/xalanx/xalanx1608/xalanx160800039/60846664-nature-professionnelle-prise-de-vue-avec-cam%C3%A9ra-sur-tr%C3%A9pied-photographe.jpg"),
                              ),
                            ],
                          ),
                          4.verticalSpace,
                          StaggeredGrid.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0,
                            children: [
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: imageContainer(
                                    "https://cdn.pixabay.com/photo/2018/03/23/09/23/flowers-3253187_640.jpg"),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: imageContainer(
                                    "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: imageContainer(
                                    "https://previews.123rf.com/images/xalanx/xalanx1608/xalanx160800039/60846664-nature-professionnelle-prise-de-vue-avec-cam%C3%A9ra-sur-tr%C3%A9pied-photographe.jpg"),
                              ),
                            ],
                          ),
                          4.verticalSpace,
                          StaggeredGrid.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0,
                            children: [
                              StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 2,
                                child: imageContainer(
                                    "https://cdn.pixabay.com/photo/2018/03/23/09/23/flowers-3253187_640.jpg"),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: imageContainer(
                                    "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: imageContainer(
                                    "https://previews.123rf.com/images/xalanx/xalanx1608/xalanx160800039/60846664-nature-professionnelle-prise-de-vue-avec-cam%C3%A9ra-sur-tr%C3%A9pied-photographe.jpg"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  imageContainer(imagePath) {
    return Card(
        elevation: 10,
        child: Image.network(
          imagePath,
          fit: BoxFit.cover,
        ));
  }

  Future<void> alertDialog(){
    return Get.defaultDialog(
      backgroundColor: generalWhite,
      barrierDismissible: true,
      title: '',
      content: Container(
        color: primaryColor,
        height: 100,
      ),
      contentPadding: const EdgeInsets.all(20),
      actions: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: searchBoxColor,
              border: Border.all(color: searchBoxColor),
              borderRadius: BorderRadius.circular(10)),
          child: ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: searchBoxColor,
                foregroundColor: searchBoxColor,
                elevation: 0),

            child: const Text('View Post' ,style: TextStyle(color: secondaryColor),),
          ),
        ),
      ],

    );
  }

}
