import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetMethodScreen extends StatefulWidget {
  const GetMethodScreen({super.key});

  @override
  State<GetMethodScreen> createState() => _GetMethodScreenState();
}

class _GetMethodScreenState extends State<GetMethodScreen> {

  Future<void> getApiMethod () async {
    Uri uri = Uri.parse('https://dummyjson.com/products');
    http.Response  response = await http.get(uri);
    if(response.statusCode == 200){
      List<Map<String,dynamic>> data = jsonDecode(response.body);
      debugPrint(data.toString());
      print('${response.statusCode} is Status Code / Successful Get Data =====================================================');
    }else{
      print('${response.statusCode} is Status Code / Error occur =====================================================');
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApiMethod();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GET API'),
      ),
      body: SafeArea(child: Column(
        children: [

        ],
      ),),
    );
  }
}
