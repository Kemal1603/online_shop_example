//----------------------------IMPORTED MODULES ----------------------------//
import 'package:flutter/material.dart';


class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {this.image,
      this.title,
      this.description,
      this.price,
      this.size,
      this.id,
      this.color});
}


List<Product> products = [
  Product(
    id: 1,
    title: 'Shoes_1',
    price: 100,
    size: 12,
    description: 'The best1',
    image: "assets/images/4-2-adidas-shoes-picture.png",
    color: Colors.lightBlueAccent
  ),

  Product(
      id: 2,
      title: 'Shoes_2',
      price: 200,
      size: 22,
      description: 'The best2',
      image: "assets/images/7-2-adidas-shoes-free-download-png_600x600.png",
      color: Colors.pink
  ),

  Product(
      id: 3,
      title: 'Shoes_3',
      price: 300,
      size: 32,
      description: 'The best3',
      image: "assets/images/8-2-adidas-shoes-png-picture.png",
      color: Colors.red
  ),

  Product(
      id: 4,
      title: 'Shoes_4',
      price: 400,
      size: 42,
      description: 'The best4',
      image: "assets/images/26230-6-nike-shoes-clipart.png",
      color: Colors.green
  ),


  Product(
      id: 5,
      title: 'Shoes_5',
      price: 500,
      size: 52,
      description: 'The best4',
      image: "assets/images/28172-8-nike-shoes-image.png",
      color: Colors.black12
  ),

  Product(
      id: 6,
      title: 'Shoes_6',
      price: 600,
      size: 62,
      description: 'The best4',
      image: "assets/images/28530-3-nike-shoes-transparent.png",
      color: Colors.red
  ),
];