import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../modal/photo_modal.dart';



class PhotoProvider extends ChangeNotifier
{
  List<PhotoModal> photoList = [];

  Future<List> jsonParsing()
  async {
    String json = await rootBundle.loadString('assets/json/photo.json');
    List jsonList = jsonDecode(json);

    return jsonList;
  }

  Future<void> fromList()
  async {
    List jsonList = await jsonParsing();
    photoList = jsonList.map((e)=>PhotoModal.fromMap(e),).toList();
    notifyListeners();
  }

  PhotoProvider()
  {
    fromList();
  }

}