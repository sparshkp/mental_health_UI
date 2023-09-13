import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mental_health_app/utilities/emoticon_faces.dart';
import 'package:mental_health_app/utilities/exercises_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items:   [
        BottomNavigationBarItem(
          icon: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300]),
            child: Icon(
              CupertinoIcons.house_fill,
             // size: 25,
              color: Colors.blue[600],
              ),),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.window,color: Colors.blue[600],),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.mail,color: Colors.blue[600],),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.blue[600],),label: ""),
        ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Column(
            children:  [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25),
               child: Column(
                children:  [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text("Hi, Jared!",style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                      SizedBox(height: 8,),
                      Text("31 July, 2023",
                      style: TextStyle(color: Colors.blue[100]))
                    ],
                  ),
                  //notification icon
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(CupertinoIcons.bell_solid,
                    color: Colors.white,
                    ),
                  )
                ],),
                // serach bar 
                SizedBox(height: 25,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: const [
                        Icon(
                          CupertinoIcons.search,
                          color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("Search",
                          style: TextStyle(
                            color: Colors.white),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                // message text 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("How do you feel?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                      ),),
                      Icon(
                        Icons.more_horiz_outlined,
                        color: Colors.white
                        ),
                  ],
                ),
                SizedBox(height: 25,),
                // reaction faces 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                  // bad 
                 Column(
                   children: [
                     EmoticonFace(emoticon:"😞" ),
                     SizedBox(height: 8,),
                     Text("Bad",style: TextStyle(color: Colors.white),)
                   ],
                 ),
                 //SizedBox(width: 20,),
                  //fine
                   Column(
                   children: [
                     EmoticonFace(emoticon:"🙂" ),
                     SizedBox(height: 8,),
                     Text("Well",style: TextStyle(color: Colors.white),)
                   ],
                 ), 
                 //well 
                  // SizedBox(width: 20,),
                  //fine
                   Column(
                   children: [
                     EmoticonFace(emoticon:"😁" ),
                     SizedBox(height: 8,),
                     Text("Fine",style: TextStyle(color: Colors.white),)
                   ],
                 ),
                 //excellent
                  //SizedBox(width: 20,),
                  //fine
                   Column(
                   children: [
                     EmoticonFace(emoticon:"😃" ),
                     SizedBox(height: 8,),
                     Text("Excellent",style: TextStyle(color: Colors.white),)
                   ],
                 ),
                ],),
               ],),
             ),
             SizedBox(height: 25,),
             // exercises heading
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(35) ,topRight: Radius.circular(35)),
                  color: Colors.grey[200],
                  ),
                  padding: EdgeInsets.all(25),
                  
                  child: Center(
                    child: Column(
                      children:   [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Exercises",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              ),),
                              Icon(Icons.more_horiz,),
                          ],
                        ),
                        SizedBox(height: 20,),
                        // exercises list 
                       Expanded(
                         child: ListView(children:  const [
                          ExerciseTile
                          (title: "Speaking Skills",
                          color: Colors.orange,
                          numberofexercises: 16,
                          icon: Icons.favorite,),
                          ExerciseTile
                          (title: "Reading Speed",
                          color: Colors.blue,
                          numberofexercises: 8,
                          icon: Icons.person,),
                          ExerciseTile
                          (title: "Listening Skills",
                          color: Colors.green,
                          numberofexercises: 10,
                          icon: CupertinoIcons.speaker_2_fill,),
                          
                          
                          
                         ],
                         
                         ),
                       ),
                      ],
                    ),
                  ),
                ))
            ],
          ),
        ),
      ),
    );
  }
}