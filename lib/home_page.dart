import 'package:flutter/material.dart';
import 'package:onboarding_screen/util/emoticon_face.dart';
import 'package:onboarding_screen/util/exercise_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        selectedItemColor: Colors.blue[600],
        unselectedItemColor: Colors.grey[600],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Intro & greetings section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Hello greeting
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Hi Mark!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "18 Apr, 2023",
                              style: TextStyle(color: Colors.blue[200]),
                            )
                          ]),

                      // Notification icon
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12.0)),
                        padding: const EdgeInsets.all(12.0),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  // searchbar
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12.0)),
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: const <Widget>[
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  // How do you feel section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        "How do you feel today?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  // Emoticons

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      EmoticonFace(emoticonFace: "😔", feeling: "Sad"),
                      EmoticonFace(emoticonFace: "😊", feeling: "Fine"),
                      EmoticonFace(emoticonFace: "😁", feeling: "Happy"),
                      EmoticonFace(emoticonFace: "🥳 ", feeling: "Excellent")
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25.0,
            ),

            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                child: Container(
                  padding:
                      const EdgeInsets.only(top: 28.0, left: 24.0, right: 24.0),
                  color: Colors.grey[200],
                  child: Center(
                      child: Column(
                    children: [
                      // Heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                            "Exercises",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),

                      const SizedBox(
                        height: 20.0,
                      ),

                      // List of exercises
                      Expanded(
                        child: ListView(
                          children: const <Widget>[
                            ExerciseTile(
                              bgColor: Colors.orange,
                              exerciseName: 'Speaking Skills',
                              icon: Icons.favorite,
                              numberOfExercises: 15,
                            ),
                            ExerciseTile(
                              bgColor: Colors.blue,
                              exerciseName: 'Reading Skills',
                              icon: Icons.person,
                              numberOfExercises: 8,
                            ),
                            ExerciseTile(
                              bgColor: Colors.green,
                              exerciseName: 'Writing Skills',
                              icon: Icons.star,
                              numberOfExercises: 20,
                            ),
                            ExerciseTile(
                              bgColor: Colors.pink,
                              exerciseName: 'Speaking Skills',
                              icon: Icons.favorite,
                              numberOfExercises: 15,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
