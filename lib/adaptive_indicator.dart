import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveIndicator extends StatelessWidget
{
  String os;
  AdaptiveIndicator({ //هاض كونستركتور عشان ابعث ال os بس اناديه عشان اعرف على مين برن وشو بدي اعمل بعد ما اعرف
    required this.os,
});


  @override
  Widget build(BuildContext context)
  {
    if(this.os == 'android') //عشان لو ال نظام اندرويد اعطيه شكل الانتظار تبعو ولو ايفون اعطيه الشكل تبع الايفون اللي قلنا انها الكوبرتينو
      return CircularProgressIndicator();
    return CupertinoActivityIndicator();
  }
}
