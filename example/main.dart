import 'package:flutter/material.dart';
import 'package:resolve_font_height/resolve_font_height.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = resolveFontHeight(context);

    return SizedBox(
      height: height,
      child: const Text('Hello, World!'),
    );
  }
}
