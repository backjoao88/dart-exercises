import 'package:flutter/material.dart';


class Product {
  final String id;
  final String name;
  final String avatarUrl;

  const Product({
    this.id,
    @required this.name,
    @required this.avatarUrl,
  });
}

