import 'package:flutter/material.dart';
import 'package:task_managment_app/constants/constants.dart';
import 'package:task_managment_app/widgets/button_widget.dart';
import 'package:task_managment_app/widgets/text_field_wdget.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailsController = TextEditingController();
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
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back, color: AppColors.secondaryColor,)
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
                ButtonWidget(
                    backgroundColor: AppColors.mainColor,
                    text: 'Add',
                    textColor: Colors.white
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


