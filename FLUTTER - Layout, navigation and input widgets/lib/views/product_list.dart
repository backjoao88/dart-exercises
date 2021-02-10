import 'package:appflutter/components/product_tile.dart';
import 'package:appflutter/models/product.dart';
import 'package:appflutter/provider/products.dart';
import 'package:appflutter/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductList extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    final Products products = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Produtos'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.PRODUCT_FORM, 
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.count,
        itemBuilder: (ctx, i) => ProductTile(products.byIndex(i)),
      )
    );
  }
}