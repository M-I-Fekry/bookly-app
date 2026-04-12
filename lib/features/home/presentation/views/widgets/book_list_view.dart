import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_book_card.dart';
import 'package:flutter/material.dart';

class BookListView extends StatelessWidget {
  final List<String> books;

  const BookListView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: BestSellerBookCard(imageUrl: books[index]),
      ),
    );
  }
}