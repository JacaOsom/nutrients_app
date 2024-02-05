import 'package:flutter/material.dart';
import 'package:nutrients_app/screens/main_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Składniki odżywcze'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Produkty roślinne',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 28,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Icon(
              Icons.local_dining,
              size: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'I ich wartości odżywcze!',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 28,
                  ),
            ),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx) => const MainScreen(),
                  ),
                );
              },
              child: Text(
                'Start!',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 28,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
