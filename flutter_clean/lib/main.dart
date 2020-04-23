import 'dart:io';

import 'package:bytebank/device/jail_broken.dart';
import 'package:flutter/material.dart';

import 'core/app.dart';
import 'core/di/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ByteBankApp());
  await setupLocator();
  if (await JailBroken.isRooted()) {
    exit(0);
  }
}
