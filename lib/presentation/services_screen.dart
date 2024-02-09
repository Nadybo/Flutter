import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/widgets/app_bar/appbar_leading_image.dart';
import 'package:myhome/widgets/app_bar/appbar_title.dart';
import 'package:myhome/widgets/app_bar/appbar_trailing_image.dart';
import 'package:myhome/widgets/app_bar/custom_app_bar.dart';
import 'package:myhome/widgets/custom_elevated_button.dart';
import 'package:myhome/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ServicesScreen extends StatelessWidget {
  ServicesScreen({Key? key}) : super(key: key);

  TextEditingController pestControlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBarSection(context),
            body: Container(
                height: 733.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 32.v),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup24),
                        fit: BoxFit.cover)),
                child: Stack(alignment: Alignment.topCenter, children: [
                  _buildThirtyFourSection(context),
                  _buildNinetyTwoSection(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBarSection(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgMegaphone,
            margin: EdgeInsets.only(left: 24.h, top: 36.v, bottom: 23.v)),
        centerTitle: true,
        title: AppbarTitle(
            text: "Сервисы", margin: EdgeInsets.only(top: 36.v, bottom: 13.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgClock,
              margin: EdgeInsets.fromLTRB(9.h, 27.v, 9.h, 12.v))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildThirtyFourSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(left: 3.h),
            padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 13.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
            child: CustomImageView(
                imagePath: ImageConstant.imgGroup35WhiteA700,
                height: 12.v,
                width: 5.h)));
  }

  /// Section Widget
  Widget _buildNinetyTwoSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 25.h, top: 49.v, right: 25.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                  width: 169.h,
                  child: Text("Сервисная\nслужба",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineLarge)),
              SizedBox(height: 44.v),
              CustomElevatedButton(
                  text: "Неисправноть лифта",
                  buttonStyle: CustomButtonStyles.fillWhiteA,
                  buttonTextStyle: theme.textTheme.titleLarge!,
                  onPressed: () {
                    onTaptf(context);
                  }),
              SizedBox(height: 15.v),
              CustomElevatedButton(
                  text: "Поломка в помещении",
                  buttonStyle: CustomButtonStyles.fillWhiteA,
                  buttonTextStyle: theme.textTheme.titleLarge!,
                  onPressed: () {
                    onTaptf1(context);
                  }),
              SizedBox(height: 15.v),
              CustomTextFormField(
                  controller: pestControlController,
                  hintText: "Дезинсекция",
                  textInputAction: TextInputAction.done,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25.h, vertical: 13.v))
            ])));
  }

  /// Navigates to the theServicethreeScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.theServicethreeScreen);
  }

  /// Navigates to the theServicetwoScreen when the action is triggered.
  onTaptf1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.theServicetwoScreen);
  }
}
