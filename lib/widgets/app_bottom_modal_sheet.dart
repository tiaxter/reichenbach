import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';

class AppBottomModalSheet extends StatelessWidget {
  final Application application;

  const AppBottomModalSheet({
    Key? key,
    required this.application,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text("App info"),
          onTap: () async => await application.openSettingsScreen(),
        ),
        ListTile(
          title: Text("Uninstall app"),
          onTap: () async => await application.uninstallApp(),
        ),
      ],
    );
  }
}
