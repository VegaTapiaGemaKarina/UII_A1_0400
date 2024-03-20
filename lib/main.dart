import 'package:flutter/material.dart';
import 'package:vega0400/pantallas0400/panel0400/panel_pantalla0400.dart';

void main() => runApp(MiAppDulceria0400());

class MiAppDulceria0400 extends StatelessWidget {
  const MiAppDulceria0400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dulceria Vega0400",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
          useMaterial3: true),
      home: PanelPantalla0400(),
    );
  }
}
