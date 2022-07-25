import 'package:flutter/material.dart';
import 'package:resolve_font_height/resolve_font_height.dart';

class App extends StatelessWidget {
  final double? fontSize;

  const App({super.key, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(height: resolveFontHeight(context, fontSize)),
            Text('Test', style: TextStyle(fontSize: fontSize)),
          ],
        ),
      ),
    );
  }
}
