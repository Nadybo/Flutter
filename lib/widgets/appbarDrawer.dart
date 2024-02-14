import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/presentation/applicationsthree_screen.dart';
import 'package:myhome/presentation/map_screen.dart';
import 'package:myhome/presentation/menu_screen/menu_screen.dart';
import 'package:myhome/presentation/services_screen.dart';




class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
 Widget build (BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
           accountName: Text("Имя пользователя"),
          accountEmail: Text("example@example.com"),
          currentAccountPicture: ClipRect(
            child: SizedBox(
              width: 104,
              height: 80,
              child: Image.asset(
                ImageConstant.imgMaskGroup, // Путь к вашему изображению
                // fit: BoxFit.cover, // Масштабирование и обрезка изображения
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Color(0XFF343949),
          ),
        ),
        ListTile(
          title: const Text('Главная'),
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => MenuScreen()),
            ); 
          },
        ),
        ListTile(
          title: const Text('Заявки'),
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => ApplicationsthreeScreen()),
            ); 
          },
        ),
        ListTile(
          title: const Text('Карты'),
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => MapScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Сервисы'),
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => ServicesScreen()),
            );
          },
        ),
      ],
    ),
  );
}
}