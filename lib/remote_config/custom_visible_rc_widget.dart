import 'package:flutter/material.dart';

import 'custom_morete_config.dart';

class CustomVisibleRCWidget extends StatelessWidget {
  final Widget child;
  final String rmKey;
  final dynamic defaultValue;

  const CustomVisibleRCWidget({
    Key? key,
    required this.child,
    required this.rmKey,
    required this.defaultValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: CustomRemoteConfig().getValueOrDefault(
        key: rmKey,
        defaultValue: defaultValue,
      ),
      child: child,
    );
  }
}
