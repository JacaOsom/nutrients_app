import 'package:flutter/material.dart';
import 'package:nutrients_app/models/product.dart';
import 'package:nutrients_app/screens/product_details_screen.dart';

class ProductSearchDelegate extends SearchDelegate {
  final List<Product> productsList;
  final void Function(Product product) onToggleFavorite;

  ProductSearchDelegate(this.productsList, this.onToggleFavorite);

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      textTheme: TextTheme(labelLarge: searchFieldStyle),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Product> matchQuery = [];
    for (var product in productsList) {
      if (product.title.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(product);
      }
      if (product.nutrients.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(product);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(
            result.title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Product> matchQuery = [];
    for (var product in productsList) {
      if (product.title.toLowerCase().contains(query.toLowerCase()) ||
          product.nutrients.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(product);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        final Product product = matchQuery[index];
        var result = matchQuery[index];
        return ListTile(
          title: Text(
            result.title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => ProductDetailsScreen(
                  product: product,
                  onToggleFavorite: onToggleFavorite,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
