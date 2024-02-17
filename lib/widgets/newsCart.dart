import 'package:flutter/material.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';


class NewsListScreen extends StatelessWidget {
  final List<News> newsList = [
    News(
      title: 'Breaking News 1',
      imageUrl: 'assets/images/img_rectangle_20_279x349.png',
      content: 'Content of Breaking News 1',
    ),
    News(
      title: 'Breaking News 2',
      imageUrl: 'assets/images/img_rectangle_20.png',
      content: 'Content of Breaking News 2',
    ),
    // Add more news items here
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsDetailScreen(news: newsList[index]),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.only(
                left:13,
                right: 13,
                bottom: 13,
              ),
              child: Container(
                padding: EdgeInsets.all(5.0),
                height: 250, // увеличиваем высоту карточки
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 430, // устанавливаем ширину изображения
                      height: 200, // устанавливаем высоту изображения
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(newsList[index].imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      // child: Text(
                      //   newsList[index].title,
                      //   style: TextStyle(fontSize: 18),
                      //   // textAlign: TextAlign.end,
                      // ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      newsList[index].title,
                      style: TextStyle(fontSize: 18),

                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
  }
}

class News {
  final String title;
  final String imageUrl;
  final String content;

  News({
    required this.title,
    required this.imageUrl,
    required this.content,
  });
}

class NewsDetailScreen extends StatelessWidget {
  final News news;

  NewsDetailScreen({required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Detail',style: CustomTextStyles.titleSmallWhiteA700,),
        backgroundColor: appTheme.blueGray800,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              news.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Image.network(
              news.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              news.content,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}