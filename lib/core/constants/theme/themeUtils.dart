import 'package:flutter/material.dart';

const Color kLightPrimary = Color(0xFF5AD383);
const Color kLightAccent = Color(0xFF48AB8C);
const Color kLightTextColor = Colors.black;
const Color kLightPlaceholder = Color(0xFFE8EAF0);
const Color kLightPlaceholderText = Color(0xFFC6CAD3);
const Color kLightBg = Color(0xFFFFFFFF);
const Color kLightError = Color(0xFFFF7971);

const Color kDarkPrimary = Color(0xFF4CC49B);
const Color kDarkAccent = Color(0xFF4CC49B);
const Color kDarkTextColor = Colors.white;
const Color kDarkPlaceholder = Color(0xFF2D3655);
const Color kDarkPlaceholderText = Color(0xFF525C7C);
const Color kDarkBg = Color(0xFF2D3251);
const Color kDarkError = Color(0xFFD0524A);

const Color kTranspatern = Color(0xFF00000000);

const Duration kAnimationDuration = Duration(milliseconds: 300);
const Curve kAnimationCurve = Curves.easeInOut;

EdgeInsets kPagePadding = const EdgeInsets.symmetric(
  horizontal: 16,
);

EdgeInsets kCardPadding = const EdgeInsets.symmetric(
  horizontal: 16,
  vertical: 16,
);

EdgeInsets kInputFieldPadding = const EdgeInsets.symmetric(
  horizontal: 16,
  vertical: 16,
);

BorderRadiusGeometry kCardBorderRadius = BorderRadius.circular(
  16,
);

BorderRadius kAppIconBorderRadius = BorderRadius.circular(
  8,
);

BorderRadiusGeometry kBottomSheetBorderRadius = const BorderRadius.only(
  topLeft: Radius.circular(16),
  topRight: Radius.circular(16),
);
