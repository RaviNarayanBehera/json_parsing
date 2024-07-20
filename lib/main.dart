import 'package:flutter/material.dart';
import 'package:json_parsing/8.1%20json_parsing/provider/photo_provider.dart';
import 'package:json_parsing/8.1%20json_parsing/view/photo_page.dart';
import 'package:json_parsing/8.1%20user_json_parsing/provider/user_provider.dart';
import 'package:json_parsing/8.1%20user_json_parsing/view/user_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PhotoProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => const UserPage(),
          '/photo' : (context) => const PhotoPage(),
        },
      ),
    );
  }
}
