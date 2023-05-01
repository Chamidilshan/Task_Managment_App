import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_managment_app/constants/constants.dart';
import 'package:task_managment_app/controllers/data_controller.dart';
import 'package:task_managment_app/screens/all_tasks.dart';
import 'package:task_managment_app/widgets/button_widget.dart';
import 'package:task_managment_app/widgets/text_field_wdget.dart';

import '../widgets/error_message_widget.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailsController = TextEditingController();

    bool _dataValidation(){
      if(nameController.text.trim()==''){
        Message.taskErrorWarning('Task name', 'Task name is empty');
        return false;
      }else if(detailsController.text.trim() == ''){
        Message.taskErrorWarning('Task details', 'Task details is empty');
        return false;
      }
      return true;
    }
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/addtask1.jpg')
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back, color: AppColors.secondaryColor,),
                )
              ],
            ),
            Column(
              children: [
                TextFieldWidget(
                    textController: nameController,
                    hintText: 'Task name',
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFieldWidget(
                    textController: detailsController,
                    hintText: 'Task details',
                    borderRadius: 20.0,
                  maxLines: 4,
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    if(_dataValidation()){
                      Get.find<DataController>().postData(
                        nameController.text.trim(),
                        detailsController.text.trim()
                      );
                      Get.to(
                              ()=>AllTasksScreen(),
                        transition: Transition.circularReveal
                      );
                    }
                  },
                  child: ButtonWidget(
                      backgroundColor: AppColors.mainColor,
                      text: 'Add',
                      textColor: Colors.white
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/10,
            )
          ],
        ),
      ),
    );
  }
}


