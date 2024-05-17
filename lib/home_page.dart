import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
        actions: const [
          CustomSwitcher(),
        ],
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,

          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSwitcher(),
            ],  
          ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            
          });
        },
      ),

    );

  }
}

class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
          onChanged: (value) {
            AppController.instance.changeTheme();
        },
    );
  }
}