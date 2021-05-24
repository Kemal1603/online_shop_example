//----------------------------IMPORTED MODULES ----------------------------//
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop_app/models/products.dart';
import 'package:online_shop_app/screens/details/components/details_body.dart';
import '../../constants.dart';


class DetailScreen extends StatelessWidget {


  final Product product;


  DetailScreen({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 1,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back-arrow-curved.svg',
            color: Colors.white,
            height: 30.0,
          ),
          onPressed: ()=> Navigator.pop(context),
        ),
        actions: [
          IconButton(
              color: kTextColor,
              icon: SvgPicture.asset('assets/icons/search-7523.svg',
                color: Colors.white,
                height: 30.0,),
              onPressed: (){

              }),
          IconButton(
              icon: SvgPicture.asset('assets/icons/add-to-basket-3042.svg',
                color: Colors.white,
                height: 30.0,),
              onPressed: (){

              }),
          SizedBox(
            width: kDefaultPadding / 2,
          )
        ],
      ),
      backgroundColor: product.color,
      body: DetailsBody(product: product,),
    );
  }


}
