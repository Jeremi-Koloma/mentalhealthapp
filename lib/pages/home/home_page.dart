import 'package:flutter/material.dart';
import 'package:mentalhealthapp/utils/emotion.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  // GREATING ROW
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 25.0),
                          const Text(
                            'Hi Jeremi !',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            '14 April, 2024',
                            style: TextStyle(color: Colors.blue[200]),
                          ),
                        ],
                      ),
                      // Notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // SEARCH BAR
                  const SizedBox(height: 25.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            "Search",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  // HOW DO YOU FEEL ?
                  const SizedBox(height: 25.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel ?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25.0),
                  // 04 DIFFERENCE FACES
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // bad
                      Column(
                        children: [
                          Emotion(
                            emotIconFace: '😞',
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "Badly",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      // fine
                      Column(
                        children: [
                          Emotion(
                            emotIconFace: '😊',
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "Fine",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      //well
                      Column(
                        children: [
                          Emotion(
                            emotIconFace: '😁',
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "Well",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      // excellent
                      Column(
                        children: [
                          Emotion(
                            emotIconFace: '😀',
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "Excellent",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25.0),
            // MAIN CONTAINER INFOS
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
