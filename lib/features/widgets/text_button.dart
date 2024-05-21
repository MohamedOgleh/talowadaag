import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'base_button.dart';

class MyTextButton extends BaseButton {
  final String? firstText;
  final String lastText;
  final bool isUnderlined;
  final bool isSingUp;

  const MyTextButton(
      {super.key,
      this.firstText,
      required this.lastText,
      this.isUnderlined = false,
      this.isSingUp = false,
      required super.onTapped});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RichText(
      text: TextSpan(
        // style: theme.textTheme.bodyLarge,
        children: <TextSpan>[
          TextSpan(
              text: firstText,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                 ),
          TextSpan(
            text: lastText,
            style: theme.textTheme.bodyMedium?.copyWith(
              decoration: isUnderlined ? TextDecoration.underline : null,
            ),
            recognizer: TapGestureRecognizer()..onTap = () => onTapped(),
          ),
        ],
      ),
    );
  }
}
