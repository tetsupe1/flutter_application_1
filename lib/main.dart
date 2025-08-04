import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_flutter_app_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/home1.jpg'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      MyFlutterApp.fish,
                      size: 50,
                      color: Color.fromARGB(255, 155, 155, 155),
                    ),
                  ),
                  SizedBox(width: 24),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 50,
                      color: Color.fromARGB(255, 155, 155, 155),
                    ),
                  ),
                  SizedBox(width: 24),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.trending_up_outlined,
                      size: 50,
                      color: Color.fromARGB(255, 155, 155, 155),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
