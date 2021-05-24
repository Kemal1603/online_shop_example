//----------------------------IMPORTED MODULES ----------------------------//
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/screens/home/components/body.dart';




class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }









  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back-arrow-curved.svg',
          height: 30.0,
        ),
        onPressed: (){

        },
      ),
      actions: [
        IconButton(
            color: kTextColor,
            icon: SvgPicture.asset('assets/icons/search-7523.svg',
              height: 30.0,),
            onPressed: (){

            }),
        IconButton(
            icon: SvgPicture.asset('assets/icons/add-to-basket-3042.svg',
              height: 30.0,),
            onPressed: (){

            }),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
