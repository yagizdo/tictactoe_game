import 'package:flutter/material.dart';

class SettingItem {
  String title;
  String desc;
  VoidCallback function;

  SettingItem(this.title, this.desc, this.function);
}
