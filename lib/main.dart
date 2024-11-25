import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/screens/login.dart';
import 'package:localization/screens/select_language.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'bloc/language_bloc.dart';
import 'localization/local.dart'; // Import this


void main() {
  runApp(
    BlocProvider(
      create: (context) => LanguageBloc(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, state) {
        return MaterialApp(
          locale: state.locale,
          supportedLocales: const [Locale('en'), Locale('ar'), Locale('fr')],
          localizationsDelegates: const [
            AppLocale.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          home: LanguageSelectionScreen(),
          routes: {
            '/login': (context) => LoginScreen(),
            '/select_lang': (context) => LanguageSelectionScreen(),
          },
        );
      },
    );
  }
}
