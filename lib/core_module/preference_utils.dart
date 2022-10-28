// import '../core_module.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// class StorageUtils {
//   static StorageUtils? _storageUtil;
//   static SharedPreferences? _preferences;

//   static Future<StorageUtils?> getInstance() async {
//     if (_storageUtil == null) {
//       var secureStorage = StorageUtils._();
//       await secureStorage._init();
//       _storageUtil = secureStorage;
//     }
//     return _storageUtil;
//   }

//   StorageUtils._();
//   Future _init() async {
//     _preferences = await SharedPreferences.getInstance();
//   }

//   // put string
//   static Future<bool>? putString(String key, String value) {
//     if (_preferences == null) return null;
//     return _preferences!.setString(key, value);
//   }

//   // get string
//   static String getString(String key, {String defValue = ''}) {
//     if (_preferences == null) return defValue;
//     return _preferences!.getString(key) ?? defValue;
//   }

//   // clear string
//   static void clrString() {
//     SharedPreferences prefs = _preferences!;
//     prefs.clear();
//   }

//   static void clrStringWithKey(String key) {
//     SharedPreferences prefs = _preferences!;
//     prefs.remove(key);
//   }

//   static void saveThemeString(String value) {
//     if (_preferences == null) return;
//     _preferences!.setString(Constants.APP_THEME, value);
//   }

//   static String getThemeString() {
//     if (_preferences == null) return Constants.SYSTEM_DEFAULT;

//     return _preferences!.getString(Constants.APP_THEME) ?? "";
//   }

//   static ThemeMode getTheme() {
//     if (_preferences == null) return ThemeMode.system;

//     String theme = getThemeString();
//     if (theme == "" || theme == Constants.SYSTEM_DEFAULT) {
//       saveThemeString(Constants.SYSTEM_DEFAULT);
//       return ThemeMode.system;
//     }
//     return theme == Constants.DARK ? ThemeMode.dark : ThemeMode.light;
//   }
// }
