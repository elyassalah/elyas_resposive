
import 'package:adaptive_responsive/mobile.dart';
import 'package:flutter/material.dart';

import 'desktop.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: Builder(
        //هاي بطريقة الميديا كويري اللي تحت بطريقة اللاياوت بيلدر
        //لكن الميديا كويري تستخدم ب اشياء ثانيه مثلا لما بدك تصر التيكست كل ما يصغر الويدث وهكذا
        builder: (BuildContext context) {
          // //بتيست انا على شو برن على اي بلاتفورم
          // String os = Platform.operatingSystem;
          // print(os);



          if(MediaQuery.of(context).size.width.toInt() <= 560) {
            return MediaQuery( //هون هيك يعني لما يصغر الودث بدي تصغر التيكست اضرب حجمو بنص ف بصغر لما بدك تنادي الموبايل سكرين كل التيكست اللي فيها بصغر
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 0.5,
                ),
            child: MobileScreen());
          }
          return MediaQuery( //هيك يعني لما تنادي سكرينة الديسكتوب كبر التيسكت كلو اضربو بثنين
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.5
              ),
          child: DesktopeScreen());

        },
      ),
      /*LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints)
        {
          print(constraints.minWidth.toInt()); //هيك بطبعلي الويدث كل ما يتغير
          if(constraints.minWidth.toInt()<=560) { //هيك بحكيلو لما يقل الويدث يوصل ل 560 او اقل ريتيرن السكرين الثانيه والسكرين الثانيه بحط فيها شكل يتناسب مع هاض الويدث على كيفي
            return MobileScreen();
          }

          return DesktopeScreen();
        },),*/
    );
  }
}
