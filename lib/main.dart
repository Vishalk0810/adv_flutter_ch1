import 'package:adv_flutter_ch1/screens/lecture%201.1/provider/change_theme_provider.dart';
import 'package:adv_flutter_ch1/screens/lecture%201.1/view/change_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: ChangeTheme(),
      ),
    );
  }
}
