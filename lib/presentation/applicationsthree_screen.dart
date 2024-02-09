import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/widgets/app_bar/appbar_leading_image.dart';
import 'package:myhome/widgets/app_bar/appbar_title.dart';
import 'package:myhome/widgets/app_bar/appbar_trailing_image.dart';
import 'package:myhome/widgets/app_bar/custom_app_bar.dart';
import 'package:myhome/widgets/custom_elevated_button.dart';
import 'package:myhome/widgets/custom_search_view.dart';
import 'package:myhome/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ApplicationsthreeScreen extends StatelessWidget {
  ApplicationsthreeScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  TextEditingController contractnumberController = TextEditingController();

  TextEditingController reasonforrelocationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBarSection(context),
            body: _buildContractNumberSection(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBarSection(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgMegaphone,
            margin: EdgeInsets.only(left: 24.h, top: 36.v, bottom: 23.v)),
        centerTitle: true,
        title: AppbarTitle(text: "Заявки"),
        actions: [
          AppbarTrailingImage(
            
              imagePath: ImageConstant.imgClock,
              margin: EdgeInsets.fromLTRB(9.h, 27.v, 9.h, 12.v))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFiftySixSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: Container(
            height: 561.v,
            width: 363.h,
            margin: EdgeInsets.only(right: 12.h, bottom: 50.v),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 26.h, vertical: 20.v),
                      decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder25),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgGroup35WhiteA700,
                          height: 19.v,
                          width: 5.h))),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 22.h, right: 25.h),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text("Расторжениедоговора найма",
                            style: theme.textTheme.headlineLarge),
                        SizedBox(height: 6.v),
                        CustomTextFormField(
                            controller: contractnumberController,
                            hintText: "№ договора"),
                        SizedBox(height: 15.v),
                        CustomTextFormField(
                            controller: reasonforrelocationController,
                            hintText: "Причина переселения",
                            textInputAction: TextInputAction.done,
                            suffix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 11.v, 13.h, 11.v),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.h)),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgThumbsUp,
                                    height: 30.v,
                                    width: 29.h)),
                            suffixConstraints: BoxConstraints(maxHeight: 266.v),
                            maxLines: 14),
                        SizedBox(height: 15.v),
                        CustomElevatedButton(
                            text: "Отправить",
                            margin: EdgeInsets.only(left: 33.h, right: 30.h))
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildContractNumberSection(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(top: 72.v),
        child: IntrinsicWidth(
            child: SizedBox(
                height: 733.v,
                width: 566.h,
                child: Stack(alignment: Alignment.topRight, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup24,
                      height: 733.v,
                      width: 390.h,
                      alignment: Alignment.centerRight),
                  Opacity(
                      opacity: 0.5,
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                              padding: EdgeInsets.only(top: 22.v, right: 13.h),
                              child: CustomSearchView(
                                  width: 363.h,
                                  controller: searchController,
                                  hintText: "Поиск",
                                  alignment: Alignment.topRight)))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(top: 72.v, bottom: 626.v),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Opacity(
                                    opacity: 0.5,
                                    child: Container(
                                        width: 133.h,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15.h, vertical: 8.v),
                                        decoration: AppDecoration.outlineGray800
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder17),
                                        child: Text("Переселение",
                                            style: CustomTextStyles
                                                .titleMediumGray800_1))),
                                Opacity(
                                    opacity: 0.5,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapTxtWidget(context);
                                        },
                                        child: Container(
                                            width: 130.h,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15.h,
                                                vertical: 6.v),
                                            decoration: AppDecoration
                                                .outlineGray800
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder17),
                                            child: Text("Проход гостя",
                                                style: CustomTextStyles
                                                    .titleMediumGray800_1)))),
                                Container(
                                    width: 261.h,
                                    margin: EdgeInsets.only(right: 12.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15.h, vertical: 6.v),
                                    decoration: AppDecoration.fillGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder17),
                                    child: Text("Расторжение договора найма",
                                        style: theme.textTheme.titleMedium))
                              ]))),
                  _buildFiftySixSection(context)
                ]))));
  }

  /// Navigates to the applicationstwoTabContainerScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.applicationstwoTabContainerScreen);
  }
}
