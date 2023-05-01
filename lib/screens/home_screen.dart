import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_managment_app/constants/constants.dart';
import 'package:task_managment_app/screens/add_task.dart';
import 'package:task_managment_app/screens/all_tasks.dart';
import 'package:task_managment_app/widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                  text: 'Hello',
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0
                  ),
                  children: [
                    TextSpan(
                    text: '\nstart your beautiful day',
                    style: TextStyle(
                        color: AppColors.smallTextColor, fontSize: 14.0
                    ),
                    )
                  ]
                ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/3,
            ),
            InkWell(
              onTap: (){
                Get.to(()=>AddTaskScreen(),
                  transition: Transition.fade,
                  duration: Duration(seconds: 1)
                );
              },
              child: ButtonWidget(
                  backgroundColor: AppColors.mainColor,
                  text: 'Add Task',
                  textColor: Colors.white
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Get.to(()=> AllTasksScreen(),
                  transition: Transition.fade,
                  duration: Duration(seconds: 1)
                );
              },
              child: ButtonWidget(
                  backgroundColor: Colors.white,
                  text: 'View All',
                  textColor: AppColors.smallTextColor
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/welcome.jpg'
            )
          )
        ),
      ),
    );
  }
}
