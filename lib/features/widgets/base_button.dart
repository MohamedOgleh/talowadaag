import 'package:flutter/cupertino.dart';

abstract class BaseButton extends StatelessWidget {
  final Function onTapped;

  const BaseButton({super.key, required this.onTapped});
}
