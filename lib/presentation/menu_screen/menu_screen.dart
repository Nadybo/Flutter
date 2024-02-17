import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/presentation/profile_screen.dart';
import 'package:myhome/widgets/appbarDrawer.dart';
import 'package:myhome/widgets/custom_search_view.dart';
import 'package:myhome/widgets/newsCart.dart';

// ignore: must_be_immutable
class MenuScreen extends StatefulWidget {
  MenuScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  TextEditingController searchController = TextEditingController();

  bool isSelectedSwitch = false;

  int currentPage = 0;

  Widget currentWidget = NewsListScreen();


  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
    resizeToAvoidBottomInset: false,
    appBar: AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Главная',
            style: CustomTextStyles.titleSmallWhiteA700,
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
        ),
      ],
      backgroundColor: appTheme.blueGray800,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    drawer: MyDrawer(), // Вызываем боковую панель из файла drawer.dart
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstant.imgVector), // Путь к вашему изображению
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 15.v),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SizedBox(
                height: 900.v,
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center, // Выравнивание по центру
                  children: [
                    CustomSearchView(
                      width: 363.h,
                      controller: searchController,
                      hintText: "Поиск",
                      alignment: Alignment.topCenter,
                    ),
                    navigationButtons(context),
                    Expanded(
                        // child: NewsListScreen(),
                        child: currentWidget,
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

  /// Section Widget

  Widget navigationButtons(BuildContext context) {
    const double textMargin = 40.0;
    const double screenMargin = 5.0;

    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 13.h,
          top: 10.v,
          bottom: 10.v,
        ),
        padding: EdgeInsets.symmetric(vertical: 6.v),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    currentWidget = NewsListScreen();
                    currentPage = 0; // Устанавливаем текущую страницу как 0 (для раздела "Новости")
                  });
                  print("Нажатие на 'Новости'");
                },
                child: Text("Новости", style: currentPage == 0 ? CustomTextStyles.titleMediumWhite800 : CustomTextStyles.titleMediumGray800, textAlign: TextAlign.center, softWrap: false),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.all(15.0),
                  side: BorderSide(color: currentPage == 0 ? Colors.white : appTheme.blueGray800, width: 1),
                ),
              ),
              SizedBox(width: textMargin),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    currentWidget = DormitoriesWidget();
                    currentPage = 1; // Устанавливаем текущую страницу как 1 (для другого раздела)
                  });
                  print("Нажатие на 'Общежития'");
                },
                child: Text("Общежития", style: currentPage == 1 ? CustomTextStyles.titleMediumWhite800 : CustomTextStyles.titleMediumGray800, textAlign: TextAlign.center, softWrap: false),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.all(15.0),
                  side: BorderSide(color: currentPage == 1 ? Colors.white : appTheme.blueGray800, width: 1),
                ),
              ),
              SizedBox(width: textMargin),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    currentWidget = MediaWidget();
                    currentPage = 2; // Устанавливаем текущую страницу как 2 (для другого раздела)
                  });
                  print("Нажатие на 'Политех Медиа'");
                },
                child: Text("Политех Медиа", style: currentPage == 2 ? CustomTextStyles.titleMediumWhite800 : CustomTextStyles.titleMediumGray800, textAlign: TextAlign.center, softWrap: false),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.all(15.0),
                  side: BorderSide(color: currentPage == 2 ? Colors.white : appTheme.blueGray800, width: 1),
                  // backgroundColor: currentPage == 2? Colors.white  : appTheme.blueGray800,
                ),
              ),
              SizedBox(width: screenMargin),
            ],
          ),
        ),
      ),
    );
  }
}


class DormitoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Dormitories Widget',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class MediaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Media Widget',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
