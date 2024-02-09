import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/presentation/applications_page.dart';
import 'package:myhome/presentation/applicationstwo_page.dart';
import 'package:myhome/widgets/app_bar/appbar_leading_image.dart';
import 'package:myhome/widgets/app_bar/appbar_title.dart';
import 'package:myhome/widgets/app_bar/appbar_trailing_image.dart';
import 'package:myhome/widgets/app_bar/custom_app_bar.dart';
import 'package:myhome/widgets/custom_search_view.dart';

class ApplicationstwoTabContainerScreen extends StatefulWidget {
  const ApplicationstwoTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ApplicationstwoTabContainerScreenState createState() =>
      ApplicationstwoTabContainerScreenState();
}

class ApplicationstwoTabContainerScreenState
    extends State<ApplicationstwoTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 805.5.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.5,
                child: Align(
                  alignment: Alignment.center,
                  child: CustomSearchView(
                    width: double.maxFinite,
                    controller: searchController,
                    hintText: "Поиск",
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SizedBox(
                height: 805.v,
                width: double.maxFinite,
                child: TabBar(
                  controller: tabviewController,
                  isScrollable: true,
                  labelColor: appTheme.whiteA700,
                  labelStyle: TextStyle(
                    fontSize: 16.fSize,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: appTheme.gray800,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 16.fSize,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                  indicatorPadding: EdgeInsets.all(
                    385.0.h,
                  ),
                  indicator: BoxDecoration(
                    color: appTheme.gray800,
                    borderRadius: BorderRadius.circular(
                      17.h,
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "Переселение",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Проход гостя",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Расторжение договора найма",
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup24,
                height: 733.v,
                width: 390.h,
                alignment: Alignment.bottomCenter,
              ),
              _buildTabBarView(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 805.v,
      leadingWidth: 53.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 36.v,
          bottom: 749.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Заявки",
        margin: EdgeInsets.only(
          top: 34.v,
          bottom: 741.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgClock,
          margin: EdgeInsets.fromLTRB(9.h, 27.v, 9.h, 738.v),
          
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 1.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          ApplicationsPage(),
          ApplicationstwoPage(),
          ApplicationstwoPage(),
        ],
      ),
    );
  }
}
