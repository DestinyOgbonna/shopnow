import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// Created Imported Files
import 'package:shopnow/components/CategoriesHoriListView.dart';
import 'package:shopnow/components/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Creating a Carousel.

    Widget image_carousel = new Container(
      height: 250.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: true,
        //to control the movemen to the carousel
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 3.0,
        dotBgColor: Colors.transparent,
        //carousel dot sizing
        indicatorBgPadding: 3.0,
        dotColor: Colors.black,
      ),

      //Carousel Ends
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          'ShopNow',
          textAlign: TextAlign.center,
        )),
        actions: [
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),

      //Creating the Drawer
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // drawer Header

            new UserAccountsDrawerHeader(
              accountName: Text('Destiny Ogbonna'),
              accountEmail: Text('destinyogbonna@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.black,
              ),
            ),

            //body of the Nav Drawer
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.black,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.black26,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.black26,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Log out'),
                leading: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
              ),
            ),

// Drawer Navigation Ends
          ],
        ),
      ),

      // Calling the carousel to display on the body
      body: new ListView(
        children: <Widget>[
          image_carousel,
          //creating a space between the carousel and the categories tab
          new Padding(
            padding: const EdgeInsets.all(9.0),
            child: Center(
                child: Text(
              'Categories',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          //Calling the horizontal list class from the Categories Horizontal list file
          HorizontalList(),

// creating the recent products section
          new Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
                child: Text(
              'Recent Products',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),

//Recent product grid view
          Container(
            height: 330.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
