import 'package:flutter/material.dart';
import 'package:nutrients_app/models/product.dart';
import 'package:nutrients_app/screens/categories_screen.dart';
import 'package:nutrients_app/screens/filters_screen.dart';
import 'package:nutrients_app/data/products_data.dart';
import 'package:nutrients_app/screens/products_screen.dart';
import 'package:nutrients_app/screens/notes_screen.dart';
import 'package:nutrients_app/widgets/product_search_delegate.dart';
import 'package:nutrients_app/widgets/main_drawer.dart';

const kInitialFilters = {
  Filter.vitaminA: false,
  Filter.vitaminC: false,
  Filter.vitaminK: false,
  Filter.vitaminE: false,
  Filter.folates: false,
  Filter.potassium: false,
  Filter.calcium: false,
  Filter.magnesium: false,
  Filter.iron: false,
  Filter.sourceProtein: false,
};

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  int _selectedPageIndex = 0;
  final List<Product> _favoriteProducts = [];
  Map<Filter, bool> _selectedFilters = kInitialFilters;

  void _showInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  void _toggleProductFavoriteStatus(Product product) {
    final isExisting = _favoriteProducts.contains(product);

    if (isExisting) {
      setState(() {
        _favoriteProducts.remove(product);
      });
      _showInfoMessage('Usunięto produkt z ulubionych!');
    } else {
      setState(() {
        _favoriteProducts.add(product);
        _showInfoMessage('Dodano produkt do ulubionych!');
      });
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      final result = await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (ctx) => FiltersScreen(
            currentFilters: _selectedFilters,
          ),
        ),
      );

      setState(() {
        _selectedFilters = result ?? kInitialFilters;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final availableProducts = productsData.where((product) {
      if (_selectedFilters[Filter.vitaminA]! && !product.isVitaminA) {
        return false;
      }
      if (_selectedFilters[Filter.vitaminC]! && !product.isVitaminC) {
        return false;
      }
      if (_selectedFilters[Filter.vitaminK]! && !product.isVitaminK) {
        return false;
      }
      if (_selectedFilters[Filter.vitaminE]! && !product.isVitaminE) {
        return false;
      }
      if (_selectedFilters[Filter.folates]! && !product.isFolates) {
        return false;
      }
      if (_selectedFilters[Filter.potassium]! && !product.isPotassium) {
        return false;
      }
      if (_selectedFilters[Filter.calcium]! && !product.isCalcium) {
        return false;
      }
      if (_selectedFilters[Filter.magnesium]! && !product.isMagnesium) {
        return false;
      }
      if (_selectedFilters[Filter.iron]! && !product.isIron) {
        return false;
      }
      if (_selectedFilters[Filter.sourceProtein]! && !product.isProteinSource) {
        return false;
      }
      return true;
    }).toList();

    Widget activePage = CategoriesScreen(
        onToggleFavorite: _toggleProductFavoriteStatus,
        productsList: availableProducts);

    var activePageTitle = 'Składniki odżywcze';

    if (_selectedPageIndex == 1) {
      activePage = ProductsScreen(
        productsList: _favoriteProducts,
        onToggleFavorite: _toggleProductFavoriteStatus,
      );
      activePageTitle = 'Ulubione';
    }

    if (_selectedPageIndex == 2) {
      activePage = const NotesScreen();
      activePageTitle = 'Notatki';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: ProductSearchDelegate(
                    availableProducts, _toggleProductFavoriteStatus),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ], //activePageTitle
      ),
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Widok Główny',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Ulubione',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_book_rounded,
            ),
            label: 'Notatki',
          ),
        ],
      ),
    );
  }
}
