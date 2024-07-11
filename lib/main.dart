import 'package:adv_flutter_ch1/screens/lecture%201.1/provider/change_theme_provider.dart';
import 'package:adv_flutter_ch1/screens/lecture%201.1/view/change_theme.dart';
import 'package:adv_flutter_ch1/utils/global.dart';
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
      create: (context) => ChangeThemeScreenProvider(),
      builder: (context, child) {
        ChangeThemeScreenProvider changeThemeScreenProviderTrue =
        Provider.of<ChangeThemeScreenProvider>(context, listen: true);
        ChangeThemeScreenProvider changeThemeScreenProviderFalse =
        Provider.of<ChangeThemeScreenProvider>(context, listen: false);
        return MaterialApp(
          theme: changeThemeScreenProviderTrue.changeThemeDataToLight,
          darkTheme: changeThemeScreenProviderTrue.changeThemeDataToDark,
          themeMode: changeThemeScreenProviderTrue.isDark?ThemeMode.dark:ThemeMode.light,
          debugShowCheckedModeBanner: false,
          home: ChangeTheme(),
        );},
    );
  }
}
