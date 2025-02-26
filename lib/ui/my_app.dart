import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // Theme setup for FlexColorScheme package v8.
      // Use same major flex_color_scheme package version. If you use a
      // lower minor version, some properties may not be supported.
      // In that case, remove them after copying this theme to your
      // app or upgrade package to version 8.1.1.
      //
      // Use this in a MaterialApp as theme and darkTheme properties.
      theme: FlexThemeData.light(
        scheme: FlexScheme.limeM3,
        subThemesData: const FlexSubThemesData(
          interactionEffects: true,
          tintedDisabledControls: true,
          useM2StyleDividerInM3: true,
          inputDecoratorIsFilled: true,
          inputDecoratorBorderType: FlexInputBorderType.outline,
          alignedDropdown: true,
          navigationRailUseIndicator: true,
          navigationRailLabelType: NavigationRailLabelType.all,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.limeM3,
        subThemesData: const FlexSubThemesData(
          interactionEffects: true,
          tintedDisabledControls: true,
          blendOnColors: true,
          useM2StyleDividerInM3: true,
          inputDecoratorIsFilled: true,
          inputDecoratorBorderType: FlexInputBorderType.outline,
          alignedDropdown: true,
          navigationRailUseIndicator: true,
          navigationRailLabelType: NavigationRailLabelType.all,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
      ),

      themeMode: ThemeMode.system,

      //todo: Implement name routing (initialRoute and getPages parameters)
      // use the name of the page the same as the widget, all lowercase!!!
      // remove the next line
      home: Scaffold(body: Center(child: Text('It works!'))), // remove this
      // remove the last line
    );
  }
}
