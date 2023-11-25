import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:log_in/pages/page_one.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      child: MaterialApp(
        darkTheme: ThemeData(useMaterial3: true),
        theme: ThemeData(useMaterial3: true),
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: PageOne(),
      ),
    );
  }
}
