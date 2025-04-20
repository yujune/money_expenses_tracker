import 'package:flutter/material.dart';
import 'package:money_expenses_tracker/common/extensions/context.dart';

enum DataState { error, empty }

class DataStateBuilder extends StatelessWidget {
  const DataStateBuilder({
    super.key,
    required this.title,
    this.description,
    this.titleColor,
    this.textColor,
    this.buttonColor,
    this.buttonTextColor,
    this.margin,
    this.buttonTitle,
    this.onButtonTap,
    this.widget,
  });

  const DataStateBuilder.empty({
    super.key,
    this.title = 'No data found',
    this.description,
    this.titleColor,
    this.textColor,
    this.buttonColor,
    this.buttonTextColor,
    this.margin,
    this.buttonTitle,
    this.onButtonTap,
    this.widget,
  });

  const DataStateBuilder.error({
    super.key,
    this.title = 'Oops, something went wrong',
    this.description,
    this.titleColor,
    this.textColor,
    this.buttonColor,
    this.buttonTextColor,
    this.margin,
    this.buttonTitle,
    this.onButtonTap,
    this.widget,
  });

  const DataStateBuilder.loading({
    super.key,
    this.title = 'Loading',
    this.description,
    this.titleColor,
    this.textColor,
    this.buttonColor,
    this.buttonTextColor,
    this.margin,
    this.buttonTitle,
    this.onButtonTap,
    this.widget = const CircularProgressIndicator(),
  });

  final String title;
  final String? description;
  final Color? titleColor;
  final Color? textColor;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final EdgeInsets? margin;
  final String? buttonTitle;
  final VoidCallback? onButtonTap;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: margin ?? const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget case final widget?) widget,
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style:
                    context.textTheme.bodyMedium?.copyWith(color: titleColor),
              ),
            ),
            if (description != null)
              Text(
                description!,
                textAlign: TextAlign.center,
                style: context.textTheme.bodyMedium?.copyWith(color: textColor),
              ),
            if (buttonTitle != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: buttonColor,
                  ),
                  onPressed: onButtonTap,
                  child: Text(
                    buttonTitle ?? 'Try again',
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: buttonTextColor ?? Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
