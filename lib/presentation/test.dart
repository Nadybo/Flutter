import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool _isFirstTime = true;

  @override
  void initState() {
    super.initState();
    _checkFirstTime();
  }

  Future<void> _checkFirstTime() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isFirstTime = prefs.getBool('isFirstTime') ?? true;
    });
  }

  Future<void> _setFirstTimeFlag() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstTime', false);
  }

  @override
  Widget build(BuildContext context) {
    return _isFirstTime ? _buildFirstTimeWidget() : _buildNormalWidget();
  }

  Widget _buildFirstTimeWidget() {
    return Scaffold(
      appBar: AppBar(
      title:Text("salom")
      ),
      body:
      Container(
          child: Column(

          ),

      ),
    );
  }

  Widget _buildNormalWidget() {
    // Здесь возвращается виджет для обычного интерфейса приложения
    return Container(
      // Пример обычного виджета
    );
  }
}
