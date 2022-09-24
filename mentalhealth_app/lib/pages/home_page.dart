// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:mentalhealth_app/util/emoticon_face.dart';
import 'package:mentalhealth_app/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  // greetings  row
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi Finn!
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Finn!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '22 Sep, 2022',
                            style: TextStyle(color: Colors.blue[200]),
                          ),
                        ],
                      ),
                      // Notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 17),
                  // search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 25),

                  // How do you feel?

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  SizedBox(height: 25),

                  // 4 different face
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Bad
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😔',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Bad',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      // Fine
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😚',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Happy',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      // Well
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😃',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Well',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      // Excellent
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '🥳',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Excellent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Center(
                  child: Column(
                    children: [
                      // Exercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(height: 20),
                      // listview of exercises
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                              icon: Icons.hearing,
                              exerciseName: 'Listening Skill',
                              numberOfExercises: 16,
                              Color: Colors.orange[500],
                            ),
                            ExerciseTile(
                              icon: Icons.favorite,
                              exerciseName: 'Speaking Skill',
                              numberOfExercises: 16,
                              Color: Colors.blue[500],
                            ),
                            ExerciseTile(
                              icon: Icons.person,
                              exerciseName: 'Reading Skill',
                              numberOfExercises: 10,
                              Color: Colors.green[500],
                            ),
                            ExerciseTile(
                              icon: Icons.star,
                              exerciseName: 'Writing Skill',
                              numberOfExercises: 8,
                              Color: Colors.pink[500],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
