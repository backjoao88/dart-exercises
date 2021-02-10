import 'package:appflutter/routes/app_routes.dart';
import 'package:appflutter/views/product_form.dart';
import 'package:appflutter/views/product_list.dart';
import 'package:appflutter/provider/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appflutter/routes/app_routes.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        )
      ],
      child: MaterialApp(
        title: 'App Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProductList(),
        routes: {
          AppRoutes.PRODUCT_FORM: (_) => ProductForm()
        },
      ),
    );
  } 
}