import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/contants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  @override
  String pokeballImageUrl = 'images/pokeball.png';

  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
           Padding(
             padding: UIHelper.getDefaultPadding(),
             child: Align(
              alignment: Alignment.centerLeft,
              child: Text(Constants.title, style: Constants.titleStyle())
              ),
           ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              pokeballImageUrl,
              width: ScreenUtil().orientation == Orientation.portrait 
              ? 0.2.sh 
              : 0.2.sw,
              fit: BoxFit.fitWidth,
              ),
          )
        ],
      ),
    );
  }
}