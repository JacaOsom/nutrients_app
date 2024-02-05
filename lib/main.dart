import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrients_app/screens/start_screen.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ).then((fn) => {});
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Składniki odżywcze',
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 124, 134, 136),
          brightness: Brightness.dark,
          surface: const Color.fromARGB(255, 33, 39, 44),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 41, 43, 44),
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: const StartScreen(),
    );
  }
}
