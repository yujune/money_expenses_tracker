import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ButtonStyle? get smallFilledButtonStyle =>
      theme.filledButtonTheme.style?.copyWith(
        minimumSize: const WidgetStatePropertyAll<Size>(
          Size(40, 40),
        ),
        padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
        ),
      );
}
