import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsInfo extends StatelessWidget {
  const BookDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle16,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 18),
            const SizedBox(width: 4),
            Text('4.8 (2390)', style: Styles.textStyle13),
          ],
        ),
      ],
    );
  }
}
