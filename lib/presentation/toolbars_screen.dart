import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/presentation/map_screen.dart';
import 'package:myhome/presentation/menu_screen/menu_screen.dart';
import 'package:myhome/presentation/services_screen.dart';

class ToolbarsScreen extends StatelessWidget {
  const ToolbarsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 805.v,
          width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    // margin: EdgeInsets.only(top: 50.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 35.h,
                      vertical: 79.v,
                    ),
                    decoration: AppDecoration.outlineBlack9002,
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMaskGroup,
                          height: 86.v,
                          width: 104.h,
                        ),
                        SizedBox(height: 48.v),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MenuScreen()), // Здесь MainScreen должен быть вашим главным экраном
                            );
                          },
                          child: Text(
                            "Главная",
                            style: CustomTextStyles.titleLargeWhiteA700_2,
                          ),
                        ),
                        SizedBox(height: 21.v),
                        InkWell(
                          onTap: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => ServicesScreen()),
                              );
                          },
                          child: Text(
                            "Заявки",
                            style: CustomTextStyles.titleLargeWhiteA700_2,
                          ),
                        ),
                        SizedBox(height: 24.v),
                         InkWell( 
                          onTap: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MapScreen()),);
                          },
                          child: Text(
                            "Карты",
                            style: CustomTextStyles.titleLargeWhiteA700_2,
                          ),
                         ),
                        SizedBox(height: 20.v),
                        InkWell( 
                          onTap: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ServicesScreen()),);
                          },
                          child: Text(
                            "Сервисы",
                            style: CustomTextStyles.titleLargeWhiteA700_2,
                          ),
                         ),
                        SizedBox(height: 20.v),
                      ],
                    ),
                  ),
                ),
              ],
          ),
        ),
      ),
    );  
  }
}
