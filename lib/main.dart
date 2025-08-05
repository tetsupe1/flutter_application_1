import 'package:flutter/material.dart';
import 'package:flutter_application_1/analysis_page.dart';
import 'package:flutter_application_1/data_page.dart';
import 'package:flutter_application_1/my_flutter_app_icons.dart';
import 'package:flutter_application_1/target_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TargetPage(),
                      ),
                    );
                  },
                  icon: Icon(
                    MyFlutterApp.fish,
                    size: 50,
                    color: Color.fromARGB(255, 155, 155, 155),
                  ),
                ),
                SizedBox(width: 24),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DataPage(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.add,
                    size: 50,
                    color: Color.fromARGB(255, 155, 155, 155),
                  ),
                ),
                SizedBox(width: 24),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AnalysisPage(),
                      ),
                    );
                  },
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
    );
  }
}
