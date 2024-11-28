import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestPage extends HookWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          title: Text(
            "AppBar",
            style: TextStyle(fontSize: 20.sp),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50.h,
            width: double.infinity.w,
            color: Colors.red,
            child: Center(
              child: Text(
                'テキストエリア1',
                style: TextStyle(color: Colors.white, fontSize: 20.sp),
              ),
            ),
          ),
          Row(
            children: [
              const Spacer(),
              Container(
                width: 300.w,
                height: 500.h,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/eto_hebi_hat.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
          Container(
            height: 100.h,
            width: double.infinity.w,
            color: Colors.blue[600],
            child: Center(
                child: Text(
              'テキストエリア2',
              style: TextStyle(fontSize: 20.sp),
            )),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow[600],
              child: Center(
                  child: Text(
                'テキストエリア3',
                style: TextStyle(fontSize: 20.sp),
              )),
            ),
          )
        ],
      ),
    );
  }
}