import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/core/utils/image_constant.dart';
import 'package:myhome/presentation/RoleSelect_screen.dart';


class IntroWindow extends StatefulWidget {
  IntroWindow({Key? key})
      : super(
    key: key,
  );

  @override
  State<IntroWindow> createState() => _IntroWindow();
}
class _IntroWindow extends State<IntroWindow> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.5,
            image: AssetImage(ImageConstant.imgIntro),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              // Color(0xff34384e),
              // Color(0xbf34384e),
              Color(0xff1f005c),
              Color(0xff5b0060),
              Color(0xff870160),
              Color(0xffac255e),
              Color(0xffca485c),
              Color(0xffe16b5c),
              Color(0xfff39060),
              Color(0xffffb56b),
            ],
            tileMode: TileMode.clamp,
          ),
        ),
        child: introWidgets(),
      ),
    );
  }
}

class introWidgets extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 60,),
          Text("Новое приложение \nдля общежитий",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              fontFamily: "SF Pro Display",
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10,),
          Text("Услуги и заявления всегда под рукой",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: "SF Pro Display",
              color: Colors.white,
            ),
          ),
          SizedBox(height: 540),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
              backgroundColor: Color(0xff39b7a0),
              fixedSize: Size(340, 50)
            ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SelectionItems()),
                );
              },
              child:const Text("Далее",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  fontFamily: "SF Pro Display",
                ),
              )
          )
        ],
        ),
      ),
    );
  }
}
