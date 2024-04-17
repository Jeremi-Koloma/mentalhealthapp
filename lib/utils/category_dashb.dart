import 'package:flutter/material.dart';

class CategoryDashb extends StatelessWidget {
  // Variable pour les catégories
  final color;
  final String categoryTitle;
  const CategoryDashb(
      {super.key, required this.color, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.0,
      height: 80.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Center(
        child: Text(
          categoryTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
