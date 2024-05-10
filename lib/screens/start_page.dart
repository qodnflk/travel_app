import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_app/screens/main_page.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:intl/intl.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  // 현재시간 나오게하는 메소드 body부분에서는 TimerBuilder위젯을 사용해야함
  // \이거는 엔터위 원화기호 누르면 나옴
  String getSystemTime() {
    var now = DateTime.now();
    return DateFormat("MMM - d - yyy \n       h:mm a").format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            'images/welcome.jpeg',
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Column(
                  children: [
                    TimerBuilder.periodic(const Duration(minutes: 1),
                        builder: (context) {
                      return Text(
                        getSystemTime(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      );
                    }),
                    const SizedBox(height: 550),
                    Column(
                      children: [
                        const Text(
                          "Let 's go Travel!!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextButton.icon(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => const MainPage()),
                              ),
                            );
                          },
                          icon: const Icon(Icons.login_outlined),
                          label: const Text(
                            "Let's go Travel!",
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
