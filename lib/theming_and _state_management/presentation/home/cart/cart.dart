import 'package:clean_architecture/theming_and%20_state_management/data/memory_data/in_memory_products.dart';
import 'package:clean_architecture/theming_and%20_state_management/domain/model/product_model.dart';
import 'package:clean_architecture/theming_and%20_state_management/presentation/theme.dart';
import 'package:clean_architecture/theming_and%20_state_management/presentation/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key, required this.onShopping}) : super(key: key);

  final VoidCallback onShopping;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Padding(padding: const EdgeInsets.all(10.0), child: _FullCart()),
    );
  }
}

class _FullCart extends StatelessWidget {
  const _FullCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemExtent: 200,
                itemBuilder: (BuildContext context, int index) {
                  final product = items[index];
                  return _ShoppingCartItems(
                    products: product,
                  );
                },
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Card(
              color: Theme.of(context).canvasColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sub Total',
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                        Text(
                          '0.0 USD',
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery',
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                        Text(
                          'free',
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total:',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          '\$85.00 USD',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    DeliveryButton(
                      onTap: () {},
                      text: 'CheckOut',
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _ShoppingCartItems extends StatelessWidget {
  const _ShoppingCartItems({
    Key? key,
    required this.products,
  }) : super(key: key);
  final Product products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Card(
            elevation: 8,
            color: Theme.of(context).canvasColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(products.image),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      flex: 3,
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
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: DeliveryColors.white,
                                    borderRadius: BorderRadius.circular(4)),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Icon(Icons.remove,
                                      color: DeliveryColors.purple),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text('2'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: DeliveryColors.purple,
                                    borderRadius: BorderRadius.circular(4)),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Icon(Icons.add,
                                      color: DeliveryColors.white),
                                ),
                              ),
                              Spacer(),
                              Text(
                                '\$${products.price}',
                                style: TextStyle(
                                  color: DeliveryColors.green,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: DeliveryColors.pink,
                child: Icon(Icons.delete_outline),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _EmptyCart extends StatelessWidget {
  final VoidCallback onShopping;

  const _EmptyCart({Key? key, required this.onShopping}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Icon(
            Icons.sentiment_dissatisfied,
            size: 120,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'There are no prpducts',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(height: 20),
        // ignore: deprecated_member_use
        RaisedButton(
          onPressed: onShopping,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: DeliveryColors.purple,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Go Shopping',
              style: TextStyle(color: DeliveryColors.white),
            ),
          ),
        )
      ],
    );
  }
}
