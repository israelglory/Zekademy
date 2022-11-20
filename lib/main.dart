import 'package:flutter/material.dart';
import 'package:zekademy/exports/exports.dart';
import 'package:device_preview/device_preview.dart';
import 'package:zekademy/views/bottom_nav/bottom_nav_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    //
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),

    // const MyApp(),
  );

  //
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      //
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF7000FF, AppColors.primarySwatch),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
      ),
      home: const BottomNavigation(),
      //getPages: RoutesClass.routes,
    );
  }
}
