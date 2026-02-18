import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetMethodScreen extends StatefulWidget {
  const GetMethodScreen({super.key});

  @override
  State<GetMethodScreen> createState() => _GetMethodScreenState();
}

class _GetMethodScreenState extends State<GetMethodScreen> {
  List<dynamic> photo = [];

  Future<void> getApiMethod() async {
    Uri uri = Uri.parse('https://dummyjson.com/c/12fd-f035-44a1-9913');
    http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      setState(() {
        photo = jsonDecode(response.body);
      });
      debugPrint(
        '${response.statusCode.toString()} =============================== %%%%%%%%%%%%%%%%%%% ===========================',
      );
      print(
        '${response.statusCode} is Status Code / Successful Get Data =====================================================',
      );
    } else {
      print(
        '${response.statusCode} is Status Code / Error occur =====================================================',
      );
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
      appBar: AppBar(title: Text('GET API')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                // shrinkWrap: true,
                itemCount: photo.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(photo[index]['title'],style: TextStyle(color: Colors.amber,fontSize: 16, fontWeight: FontWeight.w900),),
                      subtitle: Text(photo[index]['body'], style: TextStyle(color: Colors.blueGrey,fontSize: 16, fontWeight: FontWeight.w900),),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
