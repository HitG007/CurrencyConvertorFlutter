import 'package:currency_convertor/currency_convertor_material_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Types of Widgets
// 1. Stateless Widgets - State is immutable
// 2. Stateful Widgets - State is mutable

// 1. Material Design - Provided by Google
// 2. Cupertino Design - Provided by Apple
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConvertorMaterialPage(),
    );
  }
}
