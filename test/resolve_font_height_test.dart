import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'app.dart';

void main() {
  testWidgets(
    "resolveFontHeight() matches Text widget's height",
    (tester) async {
      const List<double?> fontSizes = [null, 18, 30, 50];

      for (final double? fontSize in fontSizes) {
        await tester.pumpWidget(App(fontSize: fontSize));

        final textFinder = find.text('Test');
        final sizedBoxFinder = find.byType(SizedBox);

        expect(textFinder, findsOneWidget);
        expect(sizedBoxFinder, findsOneWidget);

        final textHeight = textFinder.evaluate().single.size!.height;
        final sizedBoxHeight =
            (sizedBoxFinder.evaluate().single.widget as SizedBox).height;

        expect(textHeight, sizedBoxHeight);
      }
    },
  );
}
