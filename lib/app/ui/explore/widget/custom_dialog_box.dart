import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zainiklabassignment/app/utils/appConstants/constants.dart';
import 'package:zainiklabassignment/app/utils/app_colors.dart';

class CustomDialogBox extends StatefulWidget {
  final String imgUrl;

  const CustomDialogBox({Key? key, required this.imgUrl}) : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
              left: Constants.padding,
              top: Constants.padding,
              right: Constants.padding,
              bottom: Constants.padding),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: generalWhite,
              borderRadius: BorderRadius.circular(Constants.padding),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(Constants.padding),
                      ),
                      child: Image.asset(
                        'assets/images/user.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    5.horizontalSpace,
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Giyas Uddin',
                            style: TextStyle(
                                fontWeight:FontWeight.w700,
                                fontSize: 14,
                                letterSpacing: -0.3,
                                color: secondaryColor
                            ),
                          ),
                          Text('Dhaka, Bangladesh',
                            style: TextStyle(
                                fontWeight:FontWeight.w400,
                                fontSize: 10,
                                letterSpacing: -0.2,
                                color: secondaryColor.withOpacity(.3)
                            ),
                          ),
                        ],
                      ),
                    ),
                    5.horizontalSpace,
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: primaryColor.withOpacity(.1)
                      ),
                      onPressed: () {  },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.person_add_alt_1_rounded,size: 20,
                            color: primaryColor,
                          ),
                          5.horizontalSpace,
                          const Text('Follow',
                            style: TextStyle(color: primaryColor),

                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              20.verticalSpace,
              Card(
                elevation: 5,
                child: SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius:
                    BorderRadius.circular(15.0),
                    child: Image.network(
                      widget.imgUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              20.verticalSpace,
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: searchBoxColor,
                    border: Border.all(color: searchBoxColor),
                    borderRadius: BorderRadius.circular(10)),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: searchBoxColor,
                      foregroundColor: searchBoxColor,
                      elevation: 0),
                  child: const Text(
                    'View Post',
                    style: TextStyle(color: secondaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
