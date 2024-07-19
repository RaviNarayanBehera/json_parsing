import 'package:flutter/material.dart';
import 'package:json_parsing/8.1%20json_parsing/provider/photo_provider.dart';
import 'package:json_parsing/8.1%20json_parsing/view/photo_page.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => PhotoProvider(),)],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PhotoPage(),
      ),
    );
  }
}
