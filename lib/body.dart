import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constant.dart';
import 'package:food_app/size_config.dart';
import 'package:food_app/time_in_hour_and_minute.dart';
import 'package:food_app/clock.dart';

class Body extends StatelessWidget {
  SizeConfig sizeConfig = SizeConfig();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Ha Noi, Viet Nam",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHourAndMinutes(),
          Clock(),
          SizedBox(
              width: sizeConfig.getProportionalScreenWidth(233),
              child: AspectRatio(
                aspectRatio: 1.32,
                child: Container(
                  padding:
                      EdgeInsets.all(sizeConfig.getProportionalScreenWidth(20)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Theme.of(context).primaryIconTheme.color,
                      )),
                ),
              ))
        ],
      ),
    );
  }
}
