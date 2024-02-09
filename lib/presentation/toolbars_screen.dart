import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/widgets/custom_elevated_button.dart';
import 'package:myhome/widgets/custom_outlined_button.dart';

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
          child: Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: SizedBox(
                height: 805.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 806.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: appTheme.black900.withOpacity(0.25),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(right: 194.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 35.h,
                          vertical: 79.v,
                        ),
                        decoration: AppDecoration.outlineBlack9002,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMaskGroup,
                              height: 86.v,
                              width: 104.h,
                            ),
                            SizedBox(height: 48.v),
                            Text(
                              "Главная",
                              style: CustomTextStyles.titleLargeWhiteA700_2,
                            ),
                            SizedBox(height: 21.v),
                            Text(
                              "Заявки",
                              style: CustomTextStyles.titleLargeWhiteA700_2,
                            ),
                            SizedBox(height: 24.v),
                            Text(
                              "Карты",
                              style: CustomTextStyles.titleLargeWhiteA700_2,
                            ),
                            SizedBox(height: 20.v),
                            Padding(
                              padding: EdgeInsets.only(right: 7.h),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: Text(
                                      "Сервисы",
                                      style: CustomTextStyles
                                          .titleLargeWhiteA700_2,
                                    ),
                                  ),
                                  Container(
                                    width: 25.adaptSize,
                                    margin: EdgeInsets.only(left: 10.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.h,
                                      vertical: 1.v,
                                    ),
                                    decoration: AppDecoration.fillRed.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                    ),
                                    child: Text(
                                      "1",
                                      style: CustomTextStyles.titleMediumBlack,
                                    ),
                                  ),
                                ],
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
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(left: 2.h),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.gray800.withOpacity(0.53),
            width: 1.h,
          ),
          borderRadius: BorderRadiusStyle.roundedBorder17,
        ),
        child: Container(
          height: 35.v,
          width: 363.h,
          decoration: AppDecoration.outlineGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder17,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text(
                    "Поиск",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 17.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17,
                    ),
                    child: Text(
                      "Поиск",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctorReviews(BuildContext context) {
    return Container(
      width: 316.h,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "№ договора",
            style: theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Container(
      width: 316.h,
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Причина переселения",
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 189.v),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
            height: 30.v,
            width: 29.h,
            radius: BorderRadius.circular(
              14.h,
            ),
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
