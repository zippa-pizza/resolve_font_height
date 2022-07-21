/// Flutter package to get the default font's height based on the current build context.
library resolve_font_height;

import 'package:flutter/material.dart';

/// Returns the default font's height based on the [context] and [fontSize].
///
/// If no [fontSize] is provided the default one will be used.
double resolveFontHeight(BuildContext context, [double? fontSize]) {
  final double height = DefaultTextStyle.of(context).style.height! *
      (fontSize ?? DefaultTextStyle.of(context).style.fontSize!) *
      MediaQuery.textScaleFactorOf(context);

  return height.ceilToDouble();
}
