import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:study_app/widget/categories.dart';
import 'package:study_app/widget/list_view.dart';
import 'package:study_app/model/list_view_model.dart';
import 'package:study_app/screens/list_view_detail.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.white,
        hoverColor: Colors.blue,
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.turn_left_outlined),
        label: const Text('Back'),
      ), */
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus, // 키보드 활성화할때 다른화면 아무곳이나 누르면 숨겨짐
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),

                  // Top banner

                  Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "images/insky.jpg",
                        ),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blue[300],
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Where do \nyou want to go?',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Search

                  Material(
                    borderRadius: BorderRadius.circular(25),
                    elevation: 5,
                    child: TextFormField(
                      // 아이콘버튼에서만 설정하는게 아니라 controller도 작성을 해줘야 잘 작동함
                      controller: _textController,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10.0),
                          hintText: "Search your Travel !",
                          suffixIcon: IconButton(
                            onPressed: () {
                              _textController.clear();
                            },
                            icon: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange,
                              ),
                              child: const Icon(
                                Icons.clear,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          enabledBorder: InputBorder.none,
                          // focusedBorder는 textfield를 눌럿을때 나오는 외곽 선
                          focusedBorder: InputBorder.none),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // category

                  const Row(
                    children: [
                      Text(
                        'category',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  //Category ListView
                  SizedBox(
                    height: 70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Row(
                          children: [
                            CategoryCard(
                                title: 'Forests', image: 'images/forests.jpeg'),
                            CategoryCard(
                                title: 'Mountains',
                                image: 'images/mountains.jpeg'),
                            CategoryCard(
                                title: 'Deserts', image: 'images/deserts.jpeg'),
                          ],
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Recommended
                  const Row(
                    children: [
                      Text(
                        'Recommended',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  // Travel Location

                  SizedBox(
                    height: 350,
                    child: ListView.builder(
                      itemCount: PlaceInfo.places.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ListViewButton(
                            placeinfo: PlaceInfo.places[index],
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ListViewDetail(
                                    placeInfo: PlaceInfo.places[index],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
