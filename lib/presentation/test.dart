import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Показ окна только при первом посещении',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // Функция для проверки, посещал ли пользователь приложение ранее
  Future<bool> isFirstVisit() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('visited') ?? true;
  }

  // Функция для установки метки о посещении
  Future<void> setVisited() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('visited', false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главная страница'),
      ),
      body: FutureBuilder(
        future: isFirstVisit(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.data == true) {
            // Если это первое посещение, показываем окно
            WidgetsBinding.instance.addPostFrameCallback((_) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Добро пожаловать!'),
                  content: Text('Это окно будет показано только при вашем первом посещении.'),
                  actions: [
                    // FlatButton(
                    //   onPressed: () {
                    //     Navigator.of(context).pop();
                    //   },
                    //   child: Text('OK'),
                    // ),
                  ],
                ),
              );
              setVisited(); // Устанавливаем метку о посещении
            });
          }
          return Center(
            child: Text('Вы уже посещали это приложение ранее.'),
          );
        },
      ),
    );
  }
}
