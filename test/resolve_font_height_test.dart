import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'app.dart';

void main() {
  testWidgets(
    "resolveFontHeight() matches Text widget's height",
    (tester) async {
      const List<double?> fontSizes = [null, 18, 30, 50];
      const List<double?> textScaleFactors = [0.8, null, 1.2, 1.5, 2];

      for (final double? fontSize in fontSizes) {
        for (final double? textScaleFactor in textScaleFactors) {
          await test(tester, fontSize, textScaleFactor);
        }
      }
    },
  );
}

Future<void> test(
  WidgetTester tester,
  double? fontSize,
  double? textScaleFactor,
) async {
  await tester.pumpWidget(
    App(
      fontSize: fontSize,
      textScaleFactor: textScaleFactor,
    ),
  );

  final textFinder = find.text('Test');
  final sizedBoxFinder = find.byType(SizedBox);

  expect(textFinder, findsOneWidget);
  expect(sizedBoxFinder, findsOneWidget);

  final textHeight = textFinder.evaluate().single.size!.height;
  final sizedBoxHeight =
      (sizedBoxFinder.evaluate().single.widget as SizedBox).height;

  expect(textHeight, sizedBoxHeight);
}
