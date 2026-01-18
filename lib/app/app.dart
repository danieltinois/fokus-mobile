import 'package:flutter/material.dart';
import 'package:fokus/app/shared/enums/timer_type.dart';
import 'package:fokus/app/view/pages/home_page.dart';
import 'package:fokus/app/view/pages/timer_page.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fokus',
      routes: {
        "/home": (context) => const HomePage(),
        "/timer": (context) => TimerPage(
          timerType:
              (ModalRoute.of(context)?.settings.arguments as TimerType?) ??
              TimerType.focus,
        ),
      },
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.unboundedTextTheme(),
      ),
      initialRoute: "/home",
    );
  }
}
