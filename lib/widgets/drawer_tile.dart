import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:reichenbach/widgets/app_bottom_modal_sheet.dart';

class DrawerTile extends StatelessWidget {
  final Application application;

  const DrawerTile({Key? key, required this.application}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var icon = (application as ApplicationWithIcon).icon;

    return ListTile(
      visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
      leading: Image.memory(icon, height: 30),
      title: Text(application.appName),
      onTap: () async => await application.openApp(),
      onLongPress: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          context: context,
          builder: (ctx) => AppBottomModalSheet(
            application: application,
          )
        );
      },
    );
  }
}
