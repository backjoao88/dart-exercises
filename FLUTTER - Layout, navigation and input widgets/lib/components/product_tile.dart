import 'package:appflutter/provider/products.dart';
import 'package:appflutter/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:appflutter/models/product.dart';
import 'package:provider/provider.dart';

class ProductTile extends StatelessWidget{
  final Product product;
  const ProductTile(this.product);
  @override
  Widget build(BuildContext context){
    final av = product.avatarUrl == null || product.avatarUrl.isEmpty 
      ? CircleAvatar(child: Icon(Icons.person))
      : CircleAvatar(backgroundImage: NetworkImage(product.avatarUrl));
    return ListTile(
      leading: av, 
      title: Text(product.name),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(icon: new Icon(Icons.edit), onPressed: () => {
              Navigator.of(context).pushNamed(
                AppRoutes.PRODUCT_FORM, 
                arguments: product,
              )
            }),
            IconButton(icon: new Icon(Icons.delete), onPressed: () => {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text('Exclusão de Produto'),
                  content: Text('Tem certeza?'),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () => {},
                      child: Text('Não'),
                    ),
                    FlatButton(
                      onPressed: (){
                        Provider.of<Products>(context, listen: false).remove(product);
                        Navigator.of(context).pop();
                      },
                      child: Text('Sim')
                    )
                  ]
                )
              )
            }),
          ]
        ),
      )
    );
  }
}