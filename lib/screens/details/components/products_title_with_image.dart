import 'package:flutter/material.dart';
import 'package:online_shop_app/models/products.dart';

import '../../../constants.dart';



class ProductTitleWithImage extends StatelessWidget {
  final Product product;


  ProductTitleWithImage({this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          Text('Aristocratic hang bag',
            style: TextStyle(color: Colors.white),),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(text: '\n Price\n'),
                        TextSpan(text: '\$${product.price}',
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ]
                  )),
              Container(
                  height: 315.0,
                  width: 250.0,
                  child: Image.asset(product.image)),

            ],
          ),
        ],
      ),
    );
  }
}