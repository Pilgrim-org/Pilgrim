import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pilgrim_ui/pages/testpage.dart';
import 'package:pilgrim_ui/pages/startpage.dart';

void main() {
  return runApp(const MaterialApp(home: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // アプリ内で一度だけ設定してください。
    return ScreenUtilInit(
      // ここに基準となるデバイスサイズ(dp)を設定します。
      // 今回はiPhone14Proのサイズを基準にします。
      designSize: const Size(412,915),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(),
          home: child,
        );
      },
      child: const StartPage(),
    );
  }
}