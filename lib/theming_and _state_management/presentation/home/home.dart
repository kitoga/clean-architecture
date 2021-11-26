import 'package:clean_architecture/theming_and%20_state_management/presentation/home/cart/cart.dart';
import 'package:clean_architecture/theming_and%20_state_management/presentation/home/profile_screen/profile_screen.dart';
import 'package:clean_architecture/theming_and%20_state_management/presentation/theme.dart';
import 'package:flutter/material.dart';

import 'products/products_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: currentIndex,
              children: [
                ProductsScreen(),
                Text('Current Index2: $currentIndex'),
                CartScreen(
                  onShopping: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                ),
                Text('Current Index4: $currentIndex'),
                ProfileScreen(),
              ],
            ),
          ),
          _DeliveryNavigationBar(
              index: currentIndex,
              onIndexSelected: (index) {
                setState(() {
                  currentIndex = index;
                });
              })
        ],
      ),
    );
  }
}

class _DeliveryNavigationBar extends StatelessWidget {
  const _DeliveryNavigationBar(
      {Key? key, required this.index, required this.onIndexSelected})
      : super(key: key);
  final int index;
  final ValueChanged<int> onIndexSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Theme.of(context).bottomAppBarColor,
              width: 2,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.transparent,
              child: IconButton(
                onPressed: () => onIndexSelected(0),
                icon: Icon(
                  Icons.home,
                  color: index == 0
                      ? DeliveryColors.green
                      : DeliveryColors.lightGrey,
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: IconButton(
                onPressed: () => onIndexSelected(1),
                icon: Icon(
                  Icons.store,
                  color: index == 1
                      ? DeliveryColors.green
                      : DeliveryColors.lightGrey,
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: DeliveryColors.purple,
                child: IconButton(
                  onPressed: () => onIndexSelected(2),
                  icon:
                      Icon(Icons.shopping_basket, color: DeliveryColors.white),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: IconButton(
                onPressed: () => onIndexSelected(3),
                icon: Icon(
                  Icons.favorite_border,
                  color: index == 3
                      ? DeliveryColors.green
                      : DeliveryColors.lightGrey,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => onIndexSelected(4),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
