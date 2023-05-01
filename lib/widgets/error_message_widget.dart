import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_managment_app/constants/constants.dart';

class Message{
  static void taskErrorWarning(String taskName, String taskError){
    Get.snackbar(
        taskName,
        taskError,
        backgroundColor: AppColors.mainColor,
      titleText: Text(
        taskName,
        style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
        messageText: Text(
        taskError,
        style: TextStyle(
            fontSize: 16.0,
          color: Colors.amberAccent
        ),
      )
    );
  }
}