
import 'package:flutter/material.dart';
import 'package:qartfashion/ui/Screen/homeScreen.dart';
import 'package:qartfashion/utils/SizeConfig.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'QArt Fashion',
          theme: ThemeData(
            primaryColor: const Color(0xff01046d),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home:  HomeScreen(),
        );
      });
    });
  }
}