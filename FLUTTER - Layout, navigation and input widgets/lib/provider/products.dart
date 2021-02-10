import 'dart:math';

import 'package:appflutter/data/dummy_products.dart';
import 'package:appflutter/models/product.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Products with ChangeNotifier{
  final Map<String, Product> products = {...DUMMY_PRODUCTS};

  List<Product> get all {
    return [...products.values];
  }

  int get count {
    return products.length;
  }

  Product byIndex(int i){
    return all.elementAt(i);
  }

  void put(Product product){
    if (product == null){
      return;
    }
    print(product.id != null && product.id.trim().isNotEmpty && products.containsKey(product.id));

    if(product.id != null && !product.id.trim().isEmpty && products.containsKey(product.id)){
      print(product.id);
      products.update(product.id, (_) => Product(
        id: product.id,
        name: product.name,
        avatarUrl: product.avatarUrl,
      ));
    } else{
      final id = Random().nextDouble().toString();
      print('id:' + id);
      products.putIfAbsent(id, () => Product(
        id: id,
        name: product.name,
        avatarUrl: product.avatarUrl,
      ));
    }
    notifyListeners();
  }

  void remove(Product p){
    if(p != null && p.id != null){
      products.remove(p.id);
      notifyListeners();
    }
  }

}