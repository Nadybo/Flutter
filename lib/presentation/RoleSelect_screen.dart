import 'package:flutter/material.dart';
import 'package:myhome/presentation/login2.dart';
import 'package:myhome/presentation/login_screen.dart';


class SelectionItems extends StatefulWidget {

  @override
  State<SelectionItems> createState() => _SelectionItemsState();
}

class _SelectionItemsState extends State<SelectionItems> {
  int selectedContainerIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2d2d2f),
      body: Container(
        child: Align(
        alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0.0),
            child: Container(
              height: 710, // Задаем высоту
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch, // Растягиваем на всю ширину
                children: [
                  SizedBox(height: 30,),
                  SelectableText("Кто ты, воин?",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontFamily: "SF Pro Display",
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 40,),
                  Expanded(
                    child: ListView.separated(
                      itemCount: 3, // Количество элементов в списке
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height: 20); // Отступ между элементами списка
                      },
                      itemBuilder: (context, index) {
                        return ContainerSelectionItem(
                          isSelected: selectedContainerIndex == index,
                          onTap: () {
                            setState(() {
                              selectedContainerIndex = index;
                            });
                          },
                          color: index == 0 ? Colors.black : index == 1 ? Colors.black : Colors.black, // Задаем цвет в зависимости от индекса
                          title: index == 0? "Студент": index == 1 ? "Работник" : "Гость",
                          subtitle: index == 0 ? "Я учусь в Московском Политехе" : index == 1 ? "Я работаю в Московском Политехе" : "Я просто посмотреть", // Задаем подзаголовок в зависимости от индекса);
                        );
                      },
                    ),
                  ),
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
                          MaterialPageRoute(builder: (context) => Login2()),
                        );
                      },
                      child: const SelectableText("Далее",
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
          ),
        ),
      ),
    );
  }
}


class ContainerSelectionItem extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final Color color;
  final String subtitle;
  final String title;

  const ContainerSelectionItem({
    Key? key,
    required this.isSelected,
    required this.onTap,
    required this.color,
    required this.subtitle,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Color(0xff39b7a0) : color.withOpacity(0.5),
          borderRadius: BorderRadius.circular(14), // Округляем углы контейнера
        ),
        height: 145,
        width: 340,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectableText(
                  title, // Ваш заголовок
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.book,
                  color: Colors.white,
                ),
                // Icon(
                //   IconData(int.parse(selectedContainerIndex == 0? "e7f1": selectedContainerIndex == 1 ? "e0bb" : "e8f4", radix: 16), fontFamily: 'MaterialIcons'),
                //   color: Colors.white,
                // )
                // SvgPicture.asset(
                //   "assets/icons/student.svg",
                //   width: 20,
                //   height: 20,
                // )
              ],
            ),
            SizedBox(height: 10),
            SelectableText(
              subtitle, // Подзаголовок
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// isSelected ? Icon(Icons.check, color: Colors.white) : null
