import 'package:api_using_setstate/api_methods/get_method_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APIs CRUD'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push((context), MaterialPageRoute(builder: (context) => GetMethodScreen()));
          }, child: Text('GET DATA')),
          ElevatedButton(onPressed: (){
            Navigator.push((context), MaterialPageRoute(builder: (context) => GetMethodScreen()));
          }, child: Text('POST DATA')),
          ElevatedButton(onPressed: (){
            Navigator.push((context), MaterialPageRoute(builder: (context) => GetMethodScreen()));
          }, child: Text('UPDATE / PUT DATA')),
          ElevatedButton(onPressed: (){
            Navigator.push((context), MaterialPageRoute(builder: (context) => GetMethodScreen()));
          }, child: Text('DELETE DATA')),
        ],
      ),
    );
  }
}
