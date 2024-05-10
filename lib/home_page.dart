import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,       
      ),
      
      body: Center(
        child: GestureDetector(
          child: Text('Contador: $counter'),
            onTap: () {
              setState(() {
                counter++;
              });
            }
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
      ),
    );
  }
}
