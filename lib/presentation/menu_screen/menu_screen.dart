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

  int page = 0;
  bool currentpage = false;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
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
                height: 909.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: CustomSearchView(
                        width: 363.h,
                        controller: searchController,
                        hintText: "Поиск",
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    navigationButtons(context),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 809.v,
                        width: 363.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            NewsCard(
                              imageUrl: ImageConstant.imgClock,
                              title: 'Заголовок новости 1',
                            ),
                          ],
                        ),
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
  );
}

  /// Section Widget
  Widget navigationButtons(BuildContext context) {
    const double textMargin = 40.0;
    const double screenMargin = 20.0;

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
              OutlinedButton(
                  onPressed:(){
                    setState(() {
                      page == 1;
                      currentpage == true;
                    });
                    print("Нажатие на 'Новости'");
                    },
                  child: Text("Новости", style: CustomTextStyles.titleMediumGray800, textAlign: TextAlign.center, softWrap: false),
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    // fixedSize: const Size(he35),
                    padding:EdgeInsets.all(15.0),
                    side: const BorderSide(color: Colors.black, width: 1)
                ),
              ),
              SizedBox(width: textMargin), // Добавленный SizedBox для между текстами
              OutlinedButton(
                  onPressed:(){ print("Нажатие на 'Общежития'");},
                  child: Text("Общежития", style: CustomTextStyles.titleMediumGray800, textAlign: TextAlign.center, softWrap: false),
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    // fixedSize: const Size(he35),
                    padding:EdgeInsets.all(15.0),
                    side: const BorderSide(color: Colors.black, width: 1)
                ),
              ),

              SizedBox(width: textMargin), // Добавленный SizedBox для между текстами
              OutlinedButton(
                onPressed:(){ print("Нажатие на 'Политех Медиа'");},
                child: Text("Политех Медиа", style: CustomTextStyles.titleMediumGray800, textAlign: TextAlign.center, softWrap: false),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                    // fixedSize: const Size(he35),
                    padding:EdgeInsets.all(15.0),
                    side: const BorderSide(color: Colors.black, width: 1)
                ),
              ),
              SizedBox(width: screenMargin), // Добавленный SizedBox для margin в конце экрана
            ],
          ),
        ),
      ),
    );
  }
}