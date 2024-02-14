import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';

class NewsCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const NewsCard({
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            fullscreenDialog: true,
            transitionDuration: Duration(milliseconds: 100),
            pageBuilder: (context, animation, secondaryAnimation) {
              return FadeTransition(
                opacity: animation,
                child: NewsDetail(imageUrl: imageUrl, title: title),
              );
            },
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 150,
                  width: 364,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: CustomTextStyles.titleSmallBlack900,
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()), // Пустой Expanded для заполнения пространства
        ],
      ),
    );
  }
}

class NewsDetail extends StatelessWidget {
  final String imageUrl;
  final String title;

  const NewsDetail({
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: CustomTextStyles.titleSmallWhiteA700,
        ),
        backgroundColor: appTheme.blueGray800,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Описание новости...',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

