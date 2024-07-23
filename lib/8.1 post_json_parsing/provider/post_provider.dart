import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../modal/post_modal.dart';


class PostProvider extends ChangeNotifier {
  late PostModel postModel;

  Future<void> initPost() async {
    String json = await rootBundle.loadString('assets/json/post.json');
    final response = jsonDecode(json);
    postModel = PostModel.fromJson(response);
    notifyListeners();
  }

  PostProvider() {
    initPost();
  }
}