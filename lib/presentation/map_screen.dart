import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/widgets/app_bar/appbar_leading_image.dart';
import 'package:myhome/widgets/app_bar/appbar_title.dart';
import 'package:myhome/widgets/app_bar/custom_app_bar.dart';
import 'package:myhome/widgets/custom_elevated_button.dart';
import 'package:myhome/widgets/custom_icon_button.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
            border: Border.all(
              color: appTheme.black900,
              width: 10.h,
              strokeAlign: strokeAlignOutside,
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgMap,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 20.v),
                Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  margin: EdgeInsets.only(right: 20.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup25x25,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 3.h,
                          top: 3.v,
                        ),
                      ),
                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        alignment: Alignment.center,
                        child: CustomImageView(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                _buildCorpusaButton(context),
                SizedBox(height: 15.v),
                _buildDormitoriesButton(context),
                SizedBox(height: 15.v),
                _buildEventsButton(context),
                Spacer(),
                _buildFortyFive(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 39.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMaskGroup29x29,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 46.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Карты",
        margin: EdgeInsets.only(
          top: 37.v,
          bottom: 13.v,
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildCorpusaButton(BuildContext context) {
    return CustomElevatedButton(
      height: 37.v,
      width: 131.h,
      text: "Корпуса",
      margin: EdgeInsets.only(right: 20.h),
      buttonStyle: CustomButtonStyles.fillGray,
    );
  }

  /// Section Widget
  Widget _buildDormitoriesButton(BuildContext context) {
    return CustomElevatedButton(
      height: 37.v,
      width: 131.h,
      text: "Общежития",
      margin: EdgeInsets.only(right: 20.h),
      buttonStyle: CustomButtonStyles.fillGray,
    );
  }

  /// Section Widget
  Widget _buildEventsButton(BuildContext context) {
    return CustomElevatedButton(
      height: 37.v,
      width: 131.h,
      text: "Мероприятия",
      margin: EdgeInsets.only(right: 20.h),
      buttonStyle: CustomButtonStyles.fillGray,
    );
  }

  /// Section Widget
  Widget _buildMoreButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Подробнее",
      margin: EdgeInsets.only(
        left: 44.h,
        right: 43.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFive(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 62.v,
            width: 333.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMaskGroup23x23,
                  height: 23.adaptSize,
                  width: 23.adaptSize,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(right: 3.h),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Общежитие №1",
                        style: CustomTextStyles.titleLargeWhiteA700,
                      ),
                      SizedBox(height: 8.v),
                      Text(
                        "Малая Семёновская улица, 12, Москва, 107023",
                        style: CustomTextStyles.titleSmallWhiteA700Black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.v),
          _buildMoreButton(context),
          SizedBox(height: 34.v),
        ],
      ),
    );
  }
}
