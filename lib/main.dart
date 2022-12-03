import 'package:flutter/material.dart';
import 'package:manna/utils/routes.dart';

void main() {
  runApp(const MannaApp());
}

class MannaApp extends StatelessWidget {

  const MannaApp({
    super.key
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Manna',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green
      ),
      routerConfig: router,
    );
  }
}