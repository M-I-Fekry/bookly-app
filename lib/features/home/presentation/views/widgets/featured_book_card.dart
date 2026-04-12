import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:flutter/material.dart';

class FeaturedBookCard extends StatelessWidget {
  final String imageUrl;
  const FeaturedBookCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BookDetailsView()),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(imageUrl, width: 130, height: 200, fit: BoxFit.cover),
      ),
    );
  }
}