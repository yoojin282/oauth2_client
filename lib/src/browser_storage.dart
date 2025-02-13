// ignore_for_file: avoid_web_libraries_in_flutter

import "package:web/web.dart" as web;

import 'package:oauth2_client/src/base_storage.dart';

BaseStorage createStorage() => WebStorage();

class WebStorage implements BaseStorage {
  WebStorage();

  @override
  Future<String?> read(String key) async {
    return web.window.localStorage[key];
  }

  @override
  Future<void> write(String key, String value) async {
    web.window.localStorage[key] = value;
  }
}
