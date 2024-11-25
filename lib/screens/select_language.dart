import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/language_bloc.dart';



class LanguageSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Language')),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: const Text('English'),
              onTap: () {
                context.read<LanguageBloc>().changeLanguage(const Locale('en'));
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
            ListTile(
              title: const Text('العربية'),
              onTap: () {
                context.read<LanguageBloc>().changeLanguage(const Locale('ar'));
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
            ListTile(
              title: const Text('Français'),
              onTap: () {
                context.read<LanguageBloc>().changeLanguage(const Locale('fr'));
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
