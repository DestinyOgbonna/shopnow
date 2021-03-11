import 'package:flutter/material.dart';

// this class was called in line 190 in the main.dart file
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'images/cats/tshirt.png',
            image_Caption: 'TShirts',
          ),
          Category(
            image_location: 'images/cats/formal.png',
            image_Caption: 'Suits',
          ),
          Category(
            image_location: 'images/cats/informal.png',
            image_Caption: 'Casuals',
          ),
          Category(
            image_location: 'images/cats/shoe.png',
            image_Caption: 'Shoes',
          ),
          Category(
            image_location: 'images/cats/jeans.png',
            image_Caption: 'TShirts',
          ),
        ],
      ),
      //horizontal list class was called in the body of line 183 in the main.dart file
    );
  }
}

// the variables image_location and image_caption are objects created to hold the images and caption of the categories.
class Category extends StatelessWidget {
  final String image_location;
  final String image_Caption;

  Category({
    this.image_location,
    this.image_Caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: InkWell(
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_Caption,
                style: TextStyle(
                  fontSize: 13.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
