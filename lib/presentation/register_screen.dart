import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/widgets/custom_elevated_button.dart';
import 'package:myhome/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController webUrlEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  TextEditingController yearEditTextController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            border: Border.all(
              color: appTheme.black900,
              width: 10.h,
              strokeAlign: strokeAlignOutside,
            ),
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.blueGray800,
                appTheme.blueGray800.withOpacity(0),
              ],
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                height: 805.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 115.h,
                          vertical: 290.v,
                        ),
                        decoration: AppDecoration.fillGray.copyWith(
                          
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Spacer(),
                            _buildNextButton(context),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 50.h,
                          vertical: 33.v,
                        ),
                        decoration: AppDecoration.gradientTealToGray,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 172.v),
                            Text(
                              "Регистрация",
                              style: CustomTextStyles.headlineSmallBold,
                            ),
                            SizedBox(height: 1.v),
                            SizedBox(
                              height: 10.v,
                              child: AnimatedSmoothIndicator(
                                activeIndex: 0,
                                count: 3,
                                effect: ScrollingDotsEffect(
                                  spacing: 8,
                                  activeDotColor: appTheme.teal700,
                                  dotColor: appTheme.blueGray100,
                                  dotHeight: 10.v,
                                  dotWidth: 10.h,
                                ),
                              ),
                            ),
                            SizedBox(height: 56.v),
                            _buildWebUrlEditText(context),
                            SizedBox(height: 20.v),
                            _buildPasswordEditText(context),
                            SizedBox(height: 20.v,),
                             _buildYearEditText(context),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgMaskGroup,
                      height: 126.v,
                      width: 153.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 44.v),
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
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      height: 45.v,
      text: "Дальше",
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.titleLargeWhiteA700_1,
    );
  }

  /// Section Widget
  Widget _buildWebUrlEditText(BuildContext context) {
    return CustomTextFormField(
      controller: webUrlEditTextController,
      hintText: "p.p.polytech",
      hintStyle: CustomTextStyles.titleSmallOnPrimary,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 9.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return CustomTextFormField(
      controller: passwordEditTextController,
      hintText: "********",
      hintStyle: CustomTextStyles.titleSmallOnPrimary,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 9.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
    );
  }

  /// Section Widget
  Widget _buildYearEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 35.v),
      child: CustomTextFormField(
        width: 289.h,
        controller: yearEditTextController,
        hintText: "2021-1044",
        hintStyle: CustomTextStyles.titleSmallBlack900,
        textInputAction: TextInputAction.done,
        alignment: Alignment.bottomCenter,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 9.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
      ),
    );
  }
}
