/// Flutter package to get the default font's height based on the current build context.
library resolve_font_height;

import 'package:flutter/material.dart';

/// Returns the default font's height based on the [context] and [fontSize].
///
/// If no [fontSize] is provided the default one will be used.
double resolveFontHeight(BuildContext context, [double? fontSize]) {
  fontSize ??= DefaultTextStyle.of(context).style.fontSize;

  final TextPainter textPainter = TextPainter(
    text: TextSpan(
      text: '0',
      style: DefaultTextStyle.of(context).style.copyWith(fontSize: fontSize),
    ),
    textDirection: TextDirection.ltr,
    textScaleFactor: MediaQuery.textScaleFactorOf(context),
    maxLines: 1,
  )..layout();

  return textPainter.size.height.ceilToDouble();
}
