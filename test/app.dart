import 'package:flutter/material.dart';
import 'package:resolve_font_height/resolve_font_height.dart';

class App extends StatelessWidget {
  final double? fontSize;
  final double? textScaleFactor;

  const App({
    super.key,
    this.fontSize,
    this.textScaleFactor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return MediaQuery(
              data: MediaQuery.of(context)
                  .copyWith(textScaleFactor: textScaleFactor),
              child: Builder(
                builder: (context) {
                  return Column(
                    children: [
                      SizedBox(height: resolveFontHeight(context, fontSize)),
                      Text('Test', style: TextStyle(fontSize: fontSize)),
                    ],
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
