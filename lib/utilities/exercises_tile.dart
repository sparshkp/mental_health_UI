import 'package:flutter/material.dart';


class ExerciseTile extends StatelessWidget {
   const ExerciseTile({super.key,  required this.color, required this.icon, required this.numberofexercises, required this.title});
  // ignore: prefer_typing_uninitialized_variables
  final  color;
   // ignore: prefer_typing_uninitialized_variables
   final icon;
  final  int numberofexercises;
  final  String title;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only( bottom:12.0),
      child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
    
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
                              Row(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    color: color,
                                    child: Icon(icon ,
                                    color: Colors.white,
                                    ),),
                                ),
                              SizedBox(width: 8,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                //title
                                Text(
                                  title, 
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                  ),),
                                //subtitle
                                SizedBox(height: 5,),
                                Text("${numberofexercises} Exercises",style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),),
                              ],)
    
                              ],),
                              Icon(Icons.more_horiz),
                            ],)
                              ),
    );
  }
}