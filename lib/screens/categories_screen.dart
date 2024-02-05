import 'package:flutter/material.dart';
import 'package:nutrients_app/data/products_data.dart';
import 'package:nutrients_app/models/category.dart';
import 'package:nutrients_app/models/product.dart';
import 'package:nutrients_app/screens/products_screen.dart';
import 'package:nutrients_app/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({
    super.key,
    required this.onToggleFavorite,
    required this.productsList,
  });

  final void Function(Product product) onToggleFavorite;
  final List<Product> productsList;

  void _selectCategory(BuildContext context, Category category) {
    final filteredProducts = productsList
        .where((product) => product.category.contains(category.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ProductsScreen(
          title: category.title,
          productsList: filteredProducts,
          onToggleFavorite: onToggleFavorite,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(40),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 5 / 3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        for (final category in categories)
          CategoryItem(
            category: category,
            onSelectCategory: () {
              _selectCategory(context, category);
            },
          ),
      ],
    );
  }
}
