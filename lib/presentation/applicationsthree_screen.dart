import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/widgets/appbarDrawer.dart';
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
    return 
         Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
            backgroundColor:  appTheme.blueGray800,// Изменяем цвет AppBar
      iconTheme: IconThemeData(color: Colors.white), // Изменяем цвет AppBar
            ),
            drawer: MyDrawer(),
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
                              _buildFiftySixSection(context),
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
              text: "Переселение",
              onTap: () {
                var i = 1;
                print("Нажатие на 'Переселение'");
              },
            ),
            SizedBox(width: textMargin), // Добавленный SizedBox для между текстами
            buildHoverText(
              text: "Проход гостя",
              onTap: () {
                var i = 2;
                print("Нажатие на 'Проход гостя'");
              },
            ),
            SizedBox(width: textMargin), // Добавленный SizedBox для между текстами
            buildHoverText(
              text: "Расторжение договора найма",
              onTap: () {
                var i = 3;
                print("Нажатие на 'Расторжение договора найма'");
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
Widget _buildFiftySixSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: Container(
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
                        Text("Расторжение договора найма",
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
                      ]
                    )
                  )
                )
            ]
        )
      )
    );
  }
}

