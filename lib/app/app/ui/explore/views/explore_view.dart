import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zainiklabassignment/app/ui/explore/controllers/explore_controller.dart';
import 'package:zainiklabassignment/app/ui/explore/widget/edittext_field_widget.dart';
import 'package:zainiklabassignment/app/utils/app_colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExploreView extends StatelessWidget {
    ExploreView({Key? key}) : super(key: key);



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
                    child: GetBuilder<ExploreController>(
                      builder: (controller) {
                        return Obx(
                          ()=> StaggeredGrid.count(
                            crossAxisCount: 3,
                            mainAxisSpacing: 2,
                            crossAxisSpacing: 2,
                            children:

                              List.generate(controller.products!.length,(index){
                                controller.position.value++;


                             if( controller.position.value == 3){

                               return  StaggeredGridTile.count(
                                 crossAxisCellCount: 2,
                                 mainAxisCellCount: 2,
                                 child: Container(
                                   padding: const EdgeInsets.all(3), // Border width

                                   child:ClipRRect(
                                     borderRadius: BorderRadius.circular(15.0),
                                     child: Image.network(
                                       '${controller.productModel.value.products![index].thumbnail}',
                                       fit: BoxFit.fill,
                                     ),
                                   )
                                 ));

                             }else{
                               if(controller.position.value ==9){
                                 controller.position.value =0;
                               }
                               return  StaggeredGridTile.count(
                                 crossAxisCellCount: 1,
                                 mainAxisCellCount: 1,
                                 child:  Container(
                                     margin: const EdgeInsets.all(3), // Border width

                                     child:ClipRRect(
                                       borderRadius: BorderRadius.circular(15.0),
                                       child: Image.network(
                                         '${controller.productModel.value.products![index].thumbnail}',
                                         fit: BoxFit.fill,
                                       ),
                                     )
                                 ));
                             }

                              }



                             /* StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: tile( 1),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: tile( 2),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: tile( 3),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 2,
                                child: tile( 4),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: tile( 5),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: tile( 5),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: tile( 1),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: tile( 2),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: tile( 3),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 2,
                                child: tile( 4),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: tile( 5),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: tile( 5),
                              ),*/

                          // ),



                          /*Container(
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
                                          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
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
                                          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
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
                                          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
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
                                          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
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
                                          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
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
                                          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),*/
                  ),
                ),
                        );
                      }
                    ),
              ),
                ))),
          ],
        ),
      ),
    );
  }

    tile(var i){
    return Text(i.toString());
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
