import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_managment_app/services/services.dart';

class DataController extends GetxController{
  DataService service = DataService();
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  List<dynamic> _myTasks = [];
  List<dynamic> get myTasks => _myTasks;
  Future<void> getData() async{
    _isLoading = true;
    Response response = await service.getData();
    if(response.statusCode == 200){
      _myTasks = response.body;
      print('got data');
      update();
    }else{
      print('didnt get data');
    }
  }
}