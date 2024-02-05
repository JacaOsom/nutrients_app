import 'package:flutter/material.dart';

enum Filter {
  vitaminA,
  vitaminC,
  vitaminK,
  vitaminE,
  folates,
  potassium,
  calcium,
  magnesium,
  iron,
  sourceProtein
}

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key, required this.currentFilters});

  final Map<Filter, bool> currentFilters;

  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _vitaminAFilterSet = false;
  var _vitaminCFilterSet = false;
  var _vitaminKFilterSet = false;
  var _vitaminEFilterSet = false;
  var _folatesFilterSet = false;
  var _potassiumFilterSet = false;
  var _calciumFilterSet = false;
  var _magnesiumFilterSet = false;
  var _ironFilterSet = false;
  var _sourceProteinAFilterSet = false;

  @override
  void initState() {
    super.initState();
    _vitaminAFilterSet = widget.currentFilters[Filter.vitaminA]!;
    _vitaminCFilterSet = widget.currentFilters[Filter.vitaminC]!;
    _vitaminKFilterSet = widget.currentFilters[Filter.vitaminK]!;
    _vitaminEFilterSet = widget.currentFilters[Filter.vitaminE]!;
    _folatesFilterSet = widget.currentFilters[Filter.folates]!;
    _potassiumFilterSet = widget.currentFilters[Filter.potassium]!;
    _calciumFilterSet = widget.currentFilters[Filter.calcium]!;
    _magnesiumFilterSet = widget.currentFilters[Filter.magnesium]!;
    _ironFilterSet = widget.currentFilters[Filter.iron]!;
    _sourceProteinAFilterSet = widget.currentFilters[Filter.sourceProtein]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filtry'),
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop({
            Filter.vitaminA: _vitaminAFilterSet,
            Filter.vitaminC: _vitaminCFilterSet,
            Filter.vitaminK: _vitaminKFilterSet,
            Filter.vitaminE: _vitaminEFilterSet,
            Filter.folates: _folatesFilterSet,
            Filter.potassium: _potassiumFilterSet,
            Filter.calcium: _calciumFilterSet,
            Filter.magnesium: _magnesiumFilterSet,
            Filter.iron: _ironFilterSet,
            Filter.sourceProtein: _sourceProteinAFilterSet,
          });
          return false;
        },
        child: Column(
          children: [
            SwitchListTile(
              value: _vitaminAFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _vitaminAFilterSet = isChecked;
                });
              },
              title: Text(
                'Witamina A',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Zawiera witaminę A',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 32, right: 24),
            ),
            SwitchListTile(
              value: _vitaminCFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _vitaminCFilterSet = isChecked;
                });
              },
              title: Text(
                'Witamina C',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Zawiera witaminę C',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 32, right: 24),
            ),
            SwitchListTile(
              value: _vitaminKFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _vitaminKFilterSet = isChecked;
                });
              },
              title: Text(
                'Witamina K',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Zawiera witaminę K',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 32, right: 24),
            ),
            SwitchListTile(
              value: _vitaminEFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _vitaminEFilterSet = isChecked;
                });
              },
              title: Text(
                'Witamina E',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Zawiera witaminę E',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 32, right: 24),
            ),
            SwitchListTile(
              value: _folatesFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _folatesFilterSet = isChecked;
                });
              },
              title: Text(
                'Kwas foliowy',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Zawiera kwas foliowy',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 32, right: 24),
            ),
            SwitchListTile(
              value: _potassiumFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _potassiumFilterSet = isChecked;
                });
              },
              title: Text(
                'Potas',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Zawiera potas',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 32, right: 24),
            ),
            SwitchListTile(
              value: _calciumFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _calciumFilterSet = isChecked;
                });
              },
              title: Text(
                'Wapń',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Zawiera wapń',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 32, right: 24),
            ),
            SwitchListTile(
              value: _magnesiumFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _magnesiumFilterSet = isChecked;
                });
              },
              title: Text(
                'Magnez',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Zawiera magnez',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 32, right: 24),
            ),
            SwitchListTile(
              value: _ironFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _ironFilterSet = isChecked;
                });
              },
              title: Text(
                'Żelazo',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Zawiera żelazo',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 32, right: 24),
            ),
            SwitchListTile(
              value: _sourceProteinAFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _sourceProteinAFilterSet = isChecked;
                });
              },
              title: Text(
                'Źródło białka',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Jest źródłem białka',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 32, right: 24),
            ),
          ],
        ),
      ),
    );
  }
}
