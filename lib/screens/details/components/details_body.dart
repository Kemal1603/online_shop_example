//----------------------------IMPORTED MODULES ----------------------------//
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop_app/models/products.dart';
import 'package:online_shop_app/screens/details/components/products_title_with_image.dart';

import '../../../constants.dart';


class DetailsBody extends StatelessWidget {
  final Product product;



  DetailsBody({this.product});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
             child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                    bottom: kDefaultPadding,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding),
                    topRight: Radius.circular(kDefaultPadding),
                  )),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Color',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  SizedBox(width: 120.0,),
                                  Text('Size',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),),
                                ],
                              ),
                              Row(
                                children: [
                                  ColorDot(color: Colors.red, isColorSelected: false),
                                  ColorDot(color: Colors.green, isColorSelected: false),
                                  ColorDot(color: Colors.lightBlueAccent, isColorSelected: true),
                                  SizedBox(width: 50.0),
                                  Text('${product.size}',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isColorSelected;


  ColorDot({this.color, this.isColorSelected = false});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPadding / 4,
        right: kDefaultPadding / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24.0,
      width: 24.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isColorSelected ? color : Colors.transparent,
          shape: BoxShape.circle
        ),
      ),
    );
  }
}


