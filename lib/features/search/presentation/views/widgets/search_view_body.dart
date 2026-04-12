import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  static const List<String> books = [
    AssetsData.book1,
    AssetsData.book2,
    AssetsData.book3,
    AssetsData.book4,
    AssetsData.book5,
    AssetsData.book6,
    AssetsData.book7,
    AssetsData.book8,
    AssetsData.book9,
    AssetsData.book10,
  ];

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextField(),
          SizedBox(height: 16),
          Expanded(child: BookListView(books: books)),
        ],
      ),
    );
  }
}
