import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_book_card.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_card.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  static const List<String> featuredBooks = [
    AssetsData.book1,
    AssetsData.book2,
    AssetsData.book3,
    AssetsData.book4,
    AssetsData.book5,
  ];

  static const List<String> bestSellerBooks = [
    AssetsData.book6,
    AssetsData.book7,
    AssetsData.book8,
    AssetsData.book9,
    AssetsData.book10,
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: featuredBooks.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 16),
                child: FeaturedBookCard(imageUrl: featuredBooks[index]),
              ),
            ),
          ),
        ),

        const SliverToBoxAdapter(child: SizedBox(height: 24)),

        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text('Best Seller', style: Styles.textStyle20),
          ),
        ),

        const SliverToBoxAdapter(child: SizedBox(height: 16)),

        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: BestSellerBookCard(imageUrl: bestSellerBooks[index]),
            ),
            childCount: bestSellerBooks.length,
          ),
        ),

        const SliverToBoxAdapter(child: SizedBox(height: 24)),
      ],
    );
  }
}
