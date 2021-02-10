import 'package:appflutter/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appflutter/provider/products.dart';

class ProductForm extends StatelessWidget{
  
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};
  
  void _loadFormData(Product product){
    if(product != null){
      _formData['id'] = product.id;
      _formData['name'] = product.name;
      _formData['avatarUrl'] = product.avatarUrl;  
    }
  }

  Widget build (BuildContext context){
    
    final Product product = ModalRoute.of(context).settings.arguments as Product;

    _loadFormData(product);

    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Produtos'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.save), onPressed: () {
            final isValid = _form.currentState.validate();
            if(isValid){
              _form.currentState.save();
              Provider.of<Products>(context, listen: false)
                .put(Product(
                  id: _formData['id'], 
                  name: _formData['name'], 
                  avatarUrl: _formData['avatarUrl'])
              );
              Navigator.of(context).pop();
            }
          })
        ]
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _form,
          child: Column(
            children: <Widget>[
              TextFormField(
                initialValue: _formData['name'],
                decoration: InputDecoration(labelText: 'Nome'),
                onSaved: (value) => _formData['name'] = value,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Nome não pode ser vazio.';
                  }
                  if(value.trim().length < 3){
                    return 'O nome deve possuir mais que 3 caracteres.';
                  }
                  return null;
                }
              ),
              TextFormField(
                initialValue: _formData['avatarUrl'],
                onSaved: (value) => _formData['avatarUrl'] = value,
                decoration: InputDecoration(labelText: 'URL do Avatar')
              ),
            ]
          )
        )
      )
    );
  }
}