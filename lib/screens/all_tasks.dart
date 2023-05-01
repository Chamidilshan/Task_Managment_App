import 'package:flutter/material.dart';
import 'package:task_managment_app/constants/constants.dart';
import 'package:task_managment_app/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  const AllTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myTasks = ['Try harder', 'Try Smarter'];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 40.0),
            alignment: Alignment.topLeft,
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height/2.8,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/header1.jpg'),
                fit: BoxFit.cover
              )
            ),
            child: Icon(Icons.arrow_back, color: AppColors.secondaryColor,),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: [
                Icon(Icons.home, color: AppColors.secondaryColor,),
                SizedBox(width: 20.0,),
                Container(
                  width: 22.0,
                  height: 22.0,
                  child: Icon(Icons.add, color: Colors.white, size: 18.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.black
                  ),
                ),
                Expanded(child: Container()),
                Icon(Icons.calendar_month_sharp, color: AppColors.secondaryColor,),
                SizedBox(width: 20.0,),
                Text('2', style: TextStyle(color: AppColors.secondaryColor),)
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Flexible(
            child: ListView.builder(
                itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                child: TaskWidget(text: myTasks[index], color: Colors.blueGrey,),
              );
            },
                itemCount: myTasks.length),
          )
        ],
      ),
    );
  }
}
