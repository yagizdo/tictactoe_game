import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:tictactoe_app/constants/app_constants.dart';
import 'package:tictactoe_app/model/setting_item.dart';

import '../../constants/app_theme.dart';

showCustomDialog(BuildContext context) {
  final manager = AdaptiveTheme.of(context);

  // Settings Items List
  List<SettingItem> settingsItems = [
    // Theme Mode Settings
    SettingItem(
      title: Text(
        'Dark Mode',
        style: Theme.of(context).textTheme.labelLarge,
      ),
      subtitle: Text(
        'Change theme mode',
        style: Theme.of(context).textTheme.titleSmall,
      ),
      trailing: IconButton(
        onPressed: () {
          if (manager.mode.isLight) {
            manager.setDark();
            SmartDialog.dismiss();
          } else {
            manager.setLight();
            SmartDialog.dismiss();
          }
        },
        icon: Icon(
          manager.mode.isLight ? Icons.dark_mode_rounded : Icons.sunny,
          color: white,
        ),
      ),
    ),
  ];

  // Settings Dialog
  SmartDialog.show(
      backDismiss: false,
      builder: (_) {
        return Container(
          height: 400.h,
          width: 300.w,
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Positioned(
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    SmartDialog.dismiss();
                  },
                ),
              ),
              Align(
                child: Column(
                  children: [
                    height8,
                    Text(
                      'Settings',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 300.h,
                      child: ListView.builder(
                        itemCount: settingsItems.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                              title: settingsItems[index].title,
                              subtitle: settingsItems[index].subtitle,
                              trailing: settingsItems[index].trailing);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
