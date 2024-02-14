import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/presentation/profile_screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            child: Image.asset(
              ImageConstant.imgClock,
              height: 30,
              width: 30,
            ),
          ),
        )
      ],
      backgroundColor: appTheme.blueGray800,
      iconTheme: IconThemeData(color: Colors.white),
    );
  }
}
