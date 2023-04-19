import 'package:flutter/material.dart';
import 'package:onboarding_screen/util/emoticon_face.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // Intro & greetings section
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
