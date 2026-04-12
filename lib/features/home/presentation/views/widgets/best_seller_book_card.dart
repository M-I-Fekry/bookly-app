import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:flutter/material.dart';

class BestSellerBookCard extends StatelessWidget {
  const BestSellerBookCard({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BookDetailsView()),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(imageUrl, width: 65, height: 90, fit: BoxFit.cover),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Harry Potter\nand the Goblet of Fire',
                  style: Styles.textStyle15,
                ),
                const SizedBox(height: 4),
                const Text('J.K. Rowling', style: Styles.textStyle13),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text('19.99 €', style: Styles.textStyle14),
                    const Spacer(),
                    const Icon(Icons.star, color: Colors.amber, size: 16),
                    const SizedBox(width: 4),
                    const Text('4.8 (2390)', style: Styles.textStyle12),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
