import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/size_config.dart';
import 'package:food_app/body.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  var sizeConfig = SizeConfig();
  sizeConfig.init(context);
  return AppBar(
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/Settings.svg"),
      color: Theme.of(context).iconTheme.color,
      onPressed: () {},
    ),
    actions: [
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: sizeConfig.getProportionalScreenWidth(10),
        ),
        child: InkWell(
          onTap: () {},
          child: Container(
              width: sizeConfig.getProportionalScreenWidth(132),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.white)),
        ),
      ),
    ],
  );
}
