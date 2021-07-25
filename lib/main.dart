import 'package:bases_web/router/route_generator.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:bases_web/ui/pages/counter_page.dart';
import 'package:bases_web/ui/pages/counter_provider_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      // navigatorKey: ??,
      builder: (BuildContext context, Widget? child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
