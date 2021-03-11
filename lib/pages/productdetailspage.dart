import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shopnow/components/CategoriesHoriListView.dart';
import 'package:shopnow/main.dart';
import 'package:shopnow/components/products.dart';

class ProductDetails extends StatefulWidget {
  //creating final variables
  final product_detail_name;
  final product_detail_image;
  final product_detail_price;
  final product_detail_oldPrice;

  //creating a constructor to initialize the variables.
  ProductDetails({
    this.product_detail_name,
    this.product_detail_image,
    this.product_detail_oldPrice,
    this.product_detail_price,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: Center(
              child: Text(
            'ShopNow',
            textAlign: TextAlign.center,
          )),
        ),
        actions: [
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          // new IconButton(
          //   icon: Icon(
          //     Icons.shopping_cart,
          //     color: Colors.white,
          //   ),
          //   onPressed: () {},
          // )
        ],
      ),
      // creating the body of the product details page

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.product_detail_image),
              ),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text(
                        "\$${widget.product_detail_oldPrice}",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 17.0,
                          decoration: TextDecoration.lineThrough,
                        ),
                      )),
                      Expanded(
                        child: new Text(
                          "\$${widget.product_detail_price}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ================ creating the first Set of buttons ======================
          Row(
            children: <Widget>[
              //  ============== Creating the Size buttons ============
              Expanded(
                child: MaterialButton(
                  //============== CREATING AN ALERT DIALOG ================
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Select Size"),
                            actions: <Widget>[
                              new MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text('close')),
                            ],
                          );
                          // ========================== End of Alert Dialog ==============================
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.3,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              // =========================== End of creating size button ========================

              // =============================== Creating the Colour Button =
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Color"),
                            content: new Text("Select Color"),
                            actions: <Widget>[
                              new MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text('close')),
                            ],
                          );
                          // ========================== End of Alert Dialog ==============================
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.3,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Color")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              //========================== Creating the Quantity Button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text("Select Quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text('close')),
                            ],
                          );
                          // ========================== End of Alert Dialog ==============================
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.3,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Qty")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // ===================== Creating the Second Set  of Buttons =================

          Row(
            children: <Widget>[
              // ============================ Creating the buy now button ===========================
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.black,
                    textColor: Colors.white,
                    elevation: 0.3,
                    child: new Text("Buy Now")),
              ),
              new IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.black,
                  ),
                  onPressed: () {}),

              new IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
            ],
          ),

          Divider(),
          ListTile(
            title: Text('Product Details'),
            subtitle: new Text(
                'The Hero widget in Flutter implements a style of animation commonly known as shared element transitions or shared element animations. You’ve probably seen hero animations many times. For example, a screen displays a list of thumbnails representing items for sale.'),
          ),
          Divider(),

          Row(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.fromLTRB(13.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product Name',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text(widget.product_detail_name))
            ],
          ),

          Row(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.fromLTRB(13.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product Brand',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              // Product brand to be created later
              Padding(padding: EdgeInsets.all(5.0), child: new Text('Brand X'))
            ],
          ),

          Row(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.fromLTRB(13.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product Condition',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(5.0), child: new Text('Brand New'))
            ],
          ),


        ],
      ),
    );
  }
}

//========================= Creating the Similar Products section ===========================
