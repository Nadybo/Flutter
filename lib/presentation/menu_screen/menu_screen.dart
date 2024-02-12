import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/presentation/map_screen.dart';
import 'package:myhome/presentation/services_screen.dart';
import 'package:myhome/widgets/app_bar/appbar_leading_image.dart';
import 'package:myhome/widgets/app_bar/appbar_title.dart';
import 'package:myhome/widgets/app_bar/appbar_trailing_image.dart';
import 'package:myhome/widgets/app_bar/custom_app_bar.dart';
import 'package:myhome/widgets/custom_search_view.dart';



// ignore: must_be_immutable
class MenuScreen extends StatelessWidget {
  MenuScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();
  

  bool isSelectedSwitch = false;


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 805.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildAppBar(context),
                    SizedBox(height: 15.v),
                    Expanded(
                      child: SingleChildScrollView(
                        child: SizedBox(
                          height: 909.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Opacity(
                                opacity: 0.5,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: CustomSearchView(
                                    width: 363.h,
                                    controller: searchController,
                                    hintText: "Поиск",
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                              ),
                              navigationButtons(context),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  height: 809.v,
                                  width: 364.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      newsContainer(context),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }

  /// Section Widget
 PreferredSizeWidget _buildAppBar(BuildContext context) {
  return CustomAppBar(
    leadingWidth: 52.h,
    leading: InkWell(
      child: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 25.v,
          bottom: 25.v,
        ),
      ),
    ),
    centerTitle: true,
    title: AppbarTitle(
      text: "Новости",
    ),
    actions: [
      AppbarTrailingImage(
        imagePath: ImageConstant.imgClock,
        margin: EdgeInsets.only(
          right: 25.h,
          top: 25.v,
          bottom: 25.v,
        ),
      ),
    ],
    
    styleType: Style.bgFill,
  );
}


  /// Section Widget
Widget navigationButtons(BuildContext context) {
  const double textMargin = 40.0; 
  const double screenMargin = 20.0; 
  const bool currentPage = false;

  return Align(
    alignment: Alignment.topCenter,
    child: Container(
      margin: EdgeInsets.only(
        left: 13.h,
        top: 50.v,
        bottom: 824.v,
      ),
      padding: EdgeInsets.symmetric(vertical: 6.v),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // SizedBox(width: screenMargin), // Добавленный SizedBox для margin в начале экрана
            buildHoverText(
              text: "Новости",
              onTap: () {
                var i = 1;
                print("Нажатие на 'Новости'");
              },
            ),
            SizedBox(width: textMargin), // Добавленный SizedBox для между текстами
            buildHoverText(
              text: "Общежития",
              onTap: () {
                var i = 2;
                print("Нажатие на 'Общежития'");
              },
            ),
            SizedBox(width: textMargin), // Добавленный SizedBox для между текстами
            buildHoverText(
              text: "Политех Медиа",
              onTap: () {
                var i = 3;
                print("Нажатие на 'Политех Медиа'");
              },
            ),
            SizedBox(width: screenMargin), // Добавленный SizedBox для margin в конце экрана
          ],
        ),
      ),
    ),
  );
}

Widget buildHoverText({required String text, required VoidCallback onTap}) {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 19.h),
        child: Text(
          text,
          style: CustomTextStyles.titleMediumGray800_1,
        ),
      ),
    ),
  );
}





  /// Section Widget
  Widget newsContainer(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(
          horizontal: 7.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray400,
                      borderRadius: BorderRadius.circular(
                        17.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: _buildSixtyOne(
                      context,
                      newsTitle: "Новости Политеха",
                      subscribeText: "Подписаться",
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup35,
                    height: 19.v,
                    width: 5.h,
                    margin: EdgeInsets.symmetric(vertical: 8.v),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.v),
            _buildFrameOne(
              context,
              image: ImageConstant.imgRectangle20,
              title:
                  "Как создать город будущего? Расскажут на Дне открытых дверей  новом формате",
              viewCount: "100 просмотров",
            ),
            SizedBox(height: 7.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup37,
                    height: 34.v,
                    width: 51.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      top: 11.v,
                      bottom: 12.v,
                    ),
                    child: Text(
                      "5 комментариев",
                      style: CustomTextStyles.titleMediumGray800Medium,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevision,
                    height: 20.v,
                    width: 66.h,
                    margin: EdgeInsets.symmetric(vertical: 6.v),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  /// Common widget
  Widget _buildSixtyOne(
    BuildContext context, {
    required String newsTitle,
    required String subscribeText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          newsTitle,
          style: CustomTextStyles.titleMediumGray800.copyWith(
            color: appTheme.gray800,
          ),
        ),
        Text(
          subscribeText,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.gray50001,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameOne(
    BuildContext context, {
    required String image,
    required String title,
    required String viewCount,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 279.v,
        width: 349.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: image,
              height: 279.v,
              width: 349.h,
              radius: BorderRadius.circular(
                20.h,
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 11.v,
                ),
                decoration: AppDecoration.gradientGrayToGray800,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.v),
                    Container(
                      width: 316.h,
                      margin: EdgeInsets.only(left: 3.h),
                      child: Text(
                        title,
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.titleLargeWhiteA700Bold.copyWith(
                          color: appTheme.whiteA700,
                        ),
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        viewCount,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: appTheme.gray50001,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

