import 'package:clean_architecture/theming_and%20_state_management/domain/model/product_model.dart';
import 'package:clean_architecture/theming_and%20_state_management/presentation/theme.dart';
import 'package:clean_architecture/theming_and%20_state_management/presentation/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

import 'package:clean_architecture/theming_and%20_state_management/data/memory_data/in_memory_products.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ibaza Shop',
          // style: Theme.of(context).appBarTheme.,
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final product = items[index];
          return _ItemProduct(
            products: product,
          );
        },
      ),
    );
  }
}

class _ItemProduct extends StatelessWidget {
  const _ItemProduct({
    Key? key,
    required this.products,
  }) : super(key: key);
  final Product products;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: Theme.of(context).canvasColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.asset(products.image),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(products.name),
                    SizedBox(height: 10),
                    Text(
                      products.desc,
                      style: Theme.of(context)
                          .textTheme
                          .overline!
                          .copyWith(color: DeliveryColors.lightGrey),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 5),
                    Text(
                      '\$${products.price}USD',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ],
                ),
              ),
              DeliveryButton(
                padding: EdgeInsets.symmetric(vertical: 4),
                onTap: () {},
                text: 'Add',
              )
            ],
          )),
    );
  }
}
