import 'package:HelloWorld/app_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          CustomSwitchDarkTheme(),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Text('Contador: $counter'),
            CustomSwitchDarkTheme(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 50,
                  color: Colors.pink,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.pink,
                ),
                Container(
                  height: 100,
                  width: 50,
                  color: Colors.pink,
                ),
              ],
            ),
            Container(
              width: 150,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitchDarkTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
