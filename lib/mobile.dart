import 'package:adaptive_responsive/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'adaptive_indicator.dart';

class MobileScreen extends StatelessWidget {
//hello
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded( //هون صار العكس لانو صار كولم ف الايكسباندد صار للهايت الويدث انا بحطو تحت
            child: Container(
              width: double.infinity,
              color: Colors.teal,
            ),
          ),
          Expanded(
            flex: 2, //عشان يوخذ مساحه اكثر من اللي فوق اللي فوق بوخذ الثلث وهاص بوخذ الثلثين
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login with your account',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email Address'
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password'
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          height: 45.0,
                          child: MaterialButton(
                            onPressed: (){},
                            color: Colors.teal,
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          height: 45.0,
                          child: MaterialButton(
                            onPressed: (){},
                            color: Colors.blue,
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Center(
                    child: AdaptiveIndicator(
                      os: getOS(), //الجيب اوس هي اللي بتعطيني شو النظام اللي برن عليه وبترجعلي اياه ب سترينج ف بحطو بالاوس تبع الادابتيف انديكيتور
                    ),
                  ),


                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}

// work in git
//if i have a task named login
//1. checkout master .. go to the master if you in another branch
//2. update master من الاسم اللي فوق بالزاوية عالشمال في سهم اسمو ابديت عشان يبلش يوخذ التعديلات اللي حتصير بس ابلش بالتاسك
//3. create branch with name of your task من الماستر اللي تحت بالزاوية عالشمال
//4. code... اكتب كودك مثلا كتبت فوق كومنت هلوو
//5. commit من الاسهم برضو واكتب المسج تبع الكوميت واعمل كومت بس مش كومت اند بوش الكوميت بوخذ بس اخر اشي صار قبل ما تعمل كوميت بعديه ما بوخذو
//6. checkout master ارجع للماستر ثاني لانو ممكن بالفتره اللي بين الابديت والكوميت اجا واحد ورفع شغل ف انت مش حتكون ماخذ اخر تحديث وحيصير ايرور
//7. update master عشان اكون ماخذ اخر ابديت
//8. checkout your local branch اللي هي اللوج ان وهي بعدها لوكل لاني لسا ما عملتلها بوش عشان تروح عالريموت
//9. merge master with my current branch من عند الماستر بروح عليه بطلع خيارات بلاقي خيار الميرج
//10. push and pull request البول ريكويست من الجيت هب
