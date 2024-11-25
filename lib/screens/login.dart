import 'package:flutter/material.dart';

import '../localization/local.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(AppLocale.of(context).getTranslated('login')),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: AppLocale.of(context).getTranslated('username'),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: AppLocale.of(context).getTranslated('password'),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

              },
              child: Text(AppLocale.of(context).getTranslated('login')),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/select_lang');
              },
              child: Text(AppLocale.of(context).getTranslated('Select Language')),
            ),
          ],
        ),
      ),
    );
  }
}
