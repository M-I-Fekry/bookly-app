import 'package:flutter/material.dart';

class FeaturedBookCard extends StatelessWidget {
  const FeaturedBookCard({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(imageUrl, width: 130, height: 200, fit: BoxFit.cover),
    );
  }
}
