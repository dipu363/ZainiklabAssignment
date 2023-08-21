
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zainiklabassignment/app/utils/app_colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class ExploreView extends StatelessWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: generalWhite,
            child:Column(
              children: [
                StaggeredGrid.count(
                    crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                  children: [
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: imageContainer("https://cdn.pixabay.com/photo/2018/03/23/09/23/flowers-3253187_640.jpg"),
                    ),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: imageContainer("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
                    ),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: imageContainer("https://previews.123rf.com/images/xalanx/xalanx1608/xalanx160800039/60846664-nature-professionnelle-prise-de-vue-avec-cam%C3%A9ra-sur-tr%C3%A9pied-photographe.jpg"),
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
                        child: imageContainer("https://cdn.pixabay.com/photo/2018/03/23/09/23/flowers-3253187_640.jpg"),
                    ),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: imageContainer("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
                    ),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: imageContainer("https://previews.123rf.com/images/xalanx/xalanx1608/xalanx160800039/60846664-nature-professionnelle-prise-de-vue-avec-cam%C3%A9ra-sur-tr%C3%A9pied-photographe.jpg"),
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
                        child: imageContainer("https://cdn.pixabay.com/photo/2018/03/23/09/23/flowers-3253187_640.jpg"),
                    ),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: imageContainer("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
                    ),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: imageContainer("https://previews.123rf.com/images/xalanx/xalanx1608/xalanx160800039/60846664-nature-professionnelle-prise-de-vue-avec-cam%C3%A9ra-sur-tr%C3%A9pied-photographe.jpg"),
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
                        child: imageContainer("https://cdn.pixabay.com/photo/2018/03/23/09/23/flowers-3253187_640.jpg"),
                    ),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: imageContainer("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
                    ),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: imageContainer("https://previews.123rf.com/images/xalanx/xalanx1608/xalanx160800039/60846664-nature-professionnelle-prise-de-vue-avec-cam%C3%A9ra-sur-tr%C3%A9pied-photographe.jpg"),
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
                        child: imageContainer("https://cdn.pixabay.com/photo/2018/03/23/09/23/flowers-3253187_640.jpg"),
                    ),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: imageContainer("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
                    ),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: imageContainer("https://previews.123rf.com/images/xalanx/xalanx1608/xalanx160800039/60846664-nature-professionnelle-prise-de-vue-avec-cam%C3%A9ra-sur-tr%C3%A9pied-photographe.jpg"),
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
                        child: imageContainer("https://cdn.pixabay.com/photo/2018/03/23/09/23/flowers-3253187_640.jpg"),
                    ),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: imageContainer("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),
                    ),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: imageContainer("https://previews.123rf.com/images/xalanx/xalanx1608/xalanx160800039/60846664-nature-professionnelle-prise-de-vue-avec-cam%C3%A9ra-sur-tr%C3%A9pied-photographe.jpg"),
                    ),
                  ],
                ),

              ],
            ),
          )
        ),
      ),
    );
  }


   imageContainer(imagePath){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30)
      ),
        child: Image.network(imagePath,fit: BoxFit.cover,));
  }
}
