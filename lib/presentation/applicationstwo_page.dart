import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/widgets/custom_elevated_button.dart';
import 'package:myhome/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ApplicationstwoPage extends StatefulWidget {
  const ApplicationstwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  ApplicationstwoPageState createState() => ApplicationstwoPageState();
}

class ApplicationstwoPageState extends State<ApplicationstwoPage>
    with AutomaticKeepAliveClientMixin<ApplicationstwoPage> {
  TextEditingController contractNumberController = TextEditingController();

  TextEditingController thumbsupController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineBlack,
          child: Column(
            children: [
              SizedBox(height: 194.v),
              _buildThirtyFourColumn(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyFourColumn(BuildContext context) {
    return Container(
      height: 561.v,
      width: 363.h,
      margin: EdgeInsets.only(
        left: 15.h,
        right: 12.h,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 26.h,
                vertical: 20.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup35WhiteA700,
                height: 19.v,
                width: 5.h,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 22.h,
                right: 25.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Проход гостя",
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 48.v),
                  CustomTextFormField(
                    controller: contractNumberController,
                    hintText: "№ договора",
                  ),
                  SizedBox(height: 15.v),
                  CustomTextFormField(
                    controller: thumbsupController,
                    hintText: "Причина переселения",
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 11.v, 13.h, 11.v),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          14.h,
                        ),
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp,
                        height: 30.v,
                        width: 29.h,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 266.v,
                    ),
                    maxLines: 14,
                  ),
                  SizedBox(height: 15.v),
                  CustomElevatedButton(
                    text: "Отправить",
                    margin: EdgeInsets.only(
                      left: 33.h,
                      right: 30.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
