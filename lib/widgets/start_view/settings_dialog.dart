import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../../constants/app_theme.dart';

showCustomDialog(BuildContext context) {
  final manager = AdaptiveTheme.of(context);
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
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        'Settings',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(
                        height: 300.h,
                        child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return ListTile(
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
                                    manager.mode.isLight
                                        ? Icons.dark_mode_rounded
                                        : Icons.sunny,
                                    color: white,
                                  )),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ));
      });
}
