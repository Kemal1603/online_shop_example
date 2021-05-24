import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/products.dart';



class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ItemCard({this.product, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),

              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16.0)),
              child: Image.asset(product.image),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(product.title,
              style: TextStyle(color: kTextLightColor),),
          ),

          Text('\$${product.price}')
        ],
      ),
    );
  }
}
