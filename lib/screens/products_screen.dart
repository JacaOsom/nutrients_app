import 'package:flutter/material.dart';
import 'package:nutrients_app/models/product.dart';
import 'package:nutrients_app/screens/product_details_screen.dart';
import 'package:nutrients_app/widgets/product_item.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({
    super.key,
    this.title,
    required this.productsList,
    required this.onToggleFavorite,
  });

  final String? title;
  final List<Product> productsList;
  final void Function(Product product) onToggleFavorite;

  void selectProduct(BuildContext context, Product product) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ProductDetailsScreen(
            product: product, onToggleFavorite: onToggleFavorite),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Lista produktów jest pusta.',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
    );

    if (productsList.isNotEmpty) {
      content = ListView.builder(
        itemCount: productsList.length,
        itemBuilder: (ctx, index) => ProductItem(
          product: productsList[index],
          onSelectProduct: (product) {
            selectProduct(context, product);
          },
        ),
      );
    }

    if (title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
