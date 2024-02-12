import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/widgets/appbarDrawer.dart';
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
             appBar: AppBar(
            backgroundColor:  appTheme.blueGray800,// Изменяем цвет AppBar
      iconTheme: IconThemeData(color: Colors.white),// Изменяем цвет AppBar
            ),
            drawer: MyDrawer(),
            body: Container(
                height: 733.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 32.v),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup24),
                        fit: BoxFit.cover)),
                child: Stack(alignment: Alignment.topCenter, children: [
                  _buildNinetyTwoSection(context)
                ]
                )
            )
        )
      );
  }

  /// Section Widget
  Widget _buildNinetyTwoSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 25.h, top: 49.v, right: 25.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                  width: 180.h,
                  child: Text("Сервисная служба",
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
