import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
    required this.onSelectScreen,
  });

  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.8),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.list_alt,
                  size: 80,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Menu',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 40,
                      ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.category,
              size: 28,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Kategorie',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 24,
                  ),
            ),
            onTap: () {
              onSelectScreen('main-window');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 28,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Filtry',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 24,
                  ),
            ),
            onTap: () {
              onSelectScreen('filters');
            },
          ),
        ],
      ),
    );
  }
}
