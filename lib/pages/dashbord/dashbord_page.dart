import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mentalhealthapp/utils/category_dashb.dart';
import 'package:mentalhealthapp/utils/constultant_card.dart';

class DashbordPage extends StatelessWidget {
  const DashbordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  // GREATING
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // TEXT
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 25.0),
                          const Text(
                            'Hi Jeremi !',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            '16 April, 2024',
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          ),
                        ],
                      ),
                      // NOTIFICATION
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25.0),
                  // SEARCH BAR
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 10.0),
                      // CATEGORY TEXT
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Category',
                            style: TextStyle(
                                fontSize: 19.0, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      // CATEGORY CARD
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CategoryDashb(
                            color: Colors.deepPurple,
                            categoryTitle: 'Relationship',
                          ),
                          const SizedBox(width: 10),
                          CategoryDashb(
                            color: Colors.blue[600],
                            categoryTitle: 'Career',
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryDashb(
                            color: Colors.orange,
                            categoryTitle: 'Education',
                          ),
                          SizedBox(width: 10),
                          CategoryDashb(
                            color: Colors.pink,
                            categoryTitle: 'Other',
                          ),
                        ],
                      ),
                      // CONSULTANT TEXT
                      const SizedBox(height: 20.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Consultant',
                            style: TextStyle(
                              fontSize: 19.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      // LISTVIEW OF CONSULTATIONS
                      Expanded(
                        child: ListView(
                          children: const [
                            ConstultantCard(
                              consultantUsername: 'Bobby Singer',
                              consultantCategory: 'Education',
                              color: Colors.green,
                            ),
                            ConstultantCard(
                              consultantUsername: 'Dean Weschester',
                              consultantCategory: 'Career',
                              color: Colors.deepPurple,
                            ),
                            ConstultantCard(
                              consultantUsername: 'Jeremi Koloma',
                              consultantCategory: 'Relationship',
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ),
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
