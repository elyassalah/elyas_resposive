import 'package:adaptive_responsive/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'adaptive_indicator.dart';

class MobileScreen extends StatelessWidget {

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
