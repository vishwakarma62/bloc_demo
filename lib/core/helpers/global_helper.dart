import 'package:bloc_demo/core/service/locator_service.dart';
import 'package:flutter/material.dart';



class GlobalInit {
  static final navKey = GlobalKey<NavigatorState>();

  globalInitializer() async {
    WidgetsFlutterBinding.ensureInitialized();
    await setUpLocator();
  }
}
