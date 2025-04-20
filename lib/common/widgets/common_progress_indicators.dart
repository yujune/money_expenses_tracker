import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:money_expenses_tracker/common/extensions/context.dart';

class CommonLoading {
  bool isLoading = false;

  static final CommonLoading _instance = CommonLoading._();

  CommonLoading._();

  factory CommonLoading() {
    return _instance;
  }

  Future<void> showLoading(
    BuildContext context, {
    String title = 'Loading',
    String message = 'Requesting data',
  }) {
    isLoading = true;
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return CommonLoadingBuilder(
          title: title,
          message: message,
        );
      },
    );
  }

  Future<void> stopLoading(BuildContext context) async {
    if (isLoading) {
      isLoading = false;
      Navigator.of(context, rootNavigator: true).pop();
    }
  }
}

class CommonLoadingBuilder extends StatelessWidget {
  const CommonLoadingBuilder({
    super.key,
    this.title = 'Loading',
    this.message = 'Requesting data',
  });

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Dialog.fullscreen(
        backgroundColor: Colors.transparent,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const _CommonLoader(),
              const SizedBox(height: 24),
              Column(
                spacing: 8,
                children: [
                  Text(
                    title,
                    style: context.textTheme.bodyLarge?.copyWith(
                      decoration: TextDecoration.none,
                      color: context.theme.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    message,
                    style: context.textTheme.bodyMedium?.copyWith(
                      decoration: TextDecoration.none,
                      color: context.theme.colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CommonLoader extends HookWidget {
  const _CommonLoader();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.colorScheme.onSurface,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            32,
          ),
        ),
      ),
      padding: const EdgeInsets.all(32),
      child: CircularProgressIndicator(
        color: context.theme.colorScheme.primary,
      ),
    );
  }
}
