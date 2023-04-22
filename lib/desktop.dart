import 'package:flutter/material.dart';

import 'adaptive_indicator.dart';
import 'constants.dart';

class DesktopeScreen extends StatelessWidget {


  //كود فيه بداية حياتك مع اساس الريسبونسيف
  //للمرة المليون ريسبونسيف الويدجت غييرررر ريسبونسيف الشاشة
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded( //اهاض عشان الويدث الهايت انا بحطو تحت
            child: Container(
              height: double.infinity,
              color: Colors.teal,
            ),
          ),
          Expanded(
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