import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/presentation/login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: appTheme.blueGray800,
        iconTheme: IconThemeData(color: Colors.white),
        actions:[
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
          // MaterialPageRoute(builder: (context) => #());
          },
        ),
        ],
      ),
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
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 19.h),
                    child: Column(
                      children: [
                        SizedBox(height: 73.v),
                        CircleAvatar(backgroundColor: Colors.brown.shade800,
                          child: const Text('ПП'),
                        radius: 50,

                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "Политехов Политех",
                          style: CustomTextStyles.headlineLargeBlack,
                        ),
                        SizedBox(height: 4.v),
                        Text(
                          "студент",
                          style: CustomTextStyles.titleSmallVerdanaWhiteA700,
                        ),
                        SizedBox(height: 37.v),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 75.h,
                            vertical: 31.v,
                          ),
                          decoration: AppDecoration.outlineBlack9001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorderForProfile,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Главная информация",
                                softWrap: false,
                                style: CustomTextStyles.titleLargeWhiteA700,
                              ),
                              SizedBox(height: 26.v),
                              Text(
                                "Номер студбилета",
                                style: CustomTextStyles.titleSmallWhiteA700,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "2023-9999",
                                style: theme.textTheme.bodyMedium,
                              ),
                              SizedBox(height: 17.v),
                              Text(
                                "Номер общежития",
                                style: CustomTextStyles.titleSmallWhiteA700,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "4",
                                style: theme.textTheme.bodyMedium,
                              ),
                              SizedBox(height: 15.v),
                              Text(
                                "Комната",
                                style: CustomTextStyles.titleSmallWhiteA700,
                              ),
                              SizedBox(height: 6.v),
                              Text(
                                "13",
                                style: theme.textTheme.bodyMedium,
                              ),
                              SizedBox(height: 17.v),
                              Text(
                                "Паспорт",
                                style: CustomTextStyles.titleSmallWhiteA700,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "4720-999999",
                                style: theme.textTheme.bodyMedium,
                              ),
                              SizedBox(height: 17.v),
                              Text(
                                "Размер ноги",
                                style: CustomTextStyles.titleSmallWhiteA700,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "44",
                                style: theme.textTheme.bodyMedium,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "Обучение до",
                                style: CustomTextStyles.titleSmallWhiteA700,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "2027",
                                style: theme.textTheme.bodyMedium,
                              ),
                              SizedBox(height: 96.v),
                              Align(

                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 66.h),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen()),
                                        );
                                      },
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgArrowDown,
                                            height: 13.adaptSize,
                                            width: 9.adaptSize,
                                            margin: EdgeInsets.only(
                                              top: 3.v,
                                              bottom: 5.v,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: Text(
                                              "Выход",
                                              style: CustomTextStyles
                                                  .titleSmallSecondaryContainer,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                              ),
                              SizedBox(height: 96.v),
                            ],
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
      ),
    );
  }
}