import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopnow/pages/productdetailspage.dart';

// this class was called in line 206 in the main.dart file
//creating a stateful widget. because the products container will contain objects that change
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": "90",
      "price": '45'
    },
    {
      "name": "Shorts",
      "picture": "images/products/blazer1.jpeg",
      "old_price": "100",
      "price": "50",
    },
    {
      "name": "Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": "130",
      "price": "90",
    },
    {
      "name": "Sneakers",
      "picture": "images/products/pants1.jpg",
      "old_price": "160",
      "price": "100",
    },
    {
      "name": "T-shirts",
      "picture": "images/products/pants1.jpg",
      "old_price": "160",
      "price": "100",
    },
    {
      "name": "Blouse",
      "picture": "images/products/pants1.jpg",
      "old_price": "160",
      "price": "100",
    },
    {
      "name": "Trouser",
      "picture": "images/products/pants1.jpg",
      "old_price": "160",
      "price": "100",
    },
    {
      "name": "Blaze",
      "picture": "images/products/blazer1.jpeg",
      "old_price": "90",
      "price": '45',
    },
    {
      "name": "Suit",
      "picture": "images/products/blazer1.jpeg",
      "old_price": "100",
      "price": "50",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
            product_name: product_list[index]["name"],
            product_image: product_list[index]["picture"],
            product_oldprice: product_list[index]["old_price"],
            product_price: product_list[index]["price"],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  //creating  final variables to hold the values of the product details
  final product_name;
  final product_image;
  final product_price;
  final product_oldprice;

//created a constructor to pass the value to the variables
  Single_product({
    this.product_name,
    this.product_price,
    this.product_oldprice,
    this.product_image,
  });

  @override
  Widget build(BuildContext context) {
    //building the product name,price and image holder
    return Card(
        child: Hero(
            tag: new Text(product_name),
            child: Material(
              child: InkWell(
                //re routing to a new page
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    //here we are passing the values of the product to the product details page
                    builder: (BuildContext context) => new ProductDetails(
                          product_detail_name: product_name,
                          product_detail_image: product_image,
                          product_detail_price: product_price,
                          product_detail_oldPrice: product_oldprice,
                        ))),
                // re routing ends
                child: GridTile(
                    footer: Container(
                      color: Colors.white70,
                      child: ListTile(
                        leading: Text(
                          product_name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          '\$$product_price',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w800),
                        ),
                        subtitle: Text(
                          '\$$product_oldprice',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                    ),
                    child: Image.asset(
                      product_image,
                      fit: BoxFit.cover,
                    )),
              ),
            )));
  }
}
