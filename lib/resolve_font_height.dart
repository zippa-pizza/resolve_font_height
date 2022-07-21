library resolve_font_height;

import 'package:flutter/material.dart';

double resolveFontHeight(BuildContext context, [double? fontSize]) {
  final double height = DefaultTextStyle.of(context).style.height! *
      (fontSize ?? DefaultTextStyle.of(context).style.fontSize!) *
      MediaQuery.textScaleFactorOf(context);

  return height.ceilToDouble();
}
