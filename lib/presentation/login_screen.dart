import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/presentation/menu_screen/menu_screen.dart';
import 'package:myhome/presentation/register_screen.dart';
import 'package:myhome/widgets/custom_elevated_button.dart';
import 'package:myhome/widgets/custom_text_form_field.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController weburlController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
     
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: 390.h,
          height: 844.v,
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
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: SizeUtils.height,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                     Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 70.h,
                        vertical: 50.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        // borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 444.v),
                          TextButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterScreen()));},
                              child: Text("Нет аккаунта? Зарегистрируйтесь",style: CustomTextStyles.bodySmallWhiteA700.copyWith(
                                decoration: TextDecoration.none,),
                              )
                          ),
                          SizedBox(height: 220.v),
                          Opacity(
                            opacity: 0.5,
                            child: TextButton(
                              onPressed: () {print("zabil parol");},
                              child: Text("Не можете вспомнить логин или пароль? ", style: theme.textTheme.bodySmall,softWrap: false),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 50.h,
                            vertical: 60.v,
                          ),
                          decoration: AppDecoration.gradientTealToGray,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 138.v),
                              Text(
                                "Вход",
                                style: CustomTextStyles.headlineSmallBold,
                              ),
                              SizedBox(height: 34.v),
                              CustomTextFormField(
                                controller: weburlController,
                                hintText: "Логин",
                                hintStyle: CustomTextStyles.titleSmallOnPrimary,
                                textStyle: CustomTextStyles.inputTextStyle,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15.h,
                                  vertical: 9.v,
                                ),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineBlack,
                              ),
                              SizedBox(height: 20.v),
                              CustomTextFormField(
                                controller: passwordController,
                                hintText: "Пароль",
                                hintStyle: CustomTextStyles.titleSmallOnPrimary,
                                textStyle: CustomTextStyles.inputTextStyle,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                obscureText: true,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15.h,
                                  vertical: 9.v,
                                ),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineBlack,
                              ),
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
                      CustomElevatedButton(
                         onPressed: () {
                          // Переключаемся на новый экран
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MenuScreen()),
                          );
                        },
                        height: 45.v,
                        width: 160.h,
                        text: "Войти",
                        margin: EdgeInsets.only(top: 20.v),
                        buttonStyle: CustomButtonStyles.fillTeal,
                        buttonTextStyle: CustomTextStyles.titleLargeWhiteA700_1,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
