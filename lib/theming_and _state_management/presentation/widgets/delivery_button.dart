import 'package:clean_architecture/theming_and%20_state_management/presentation/theme.dart';
import 'package:flutter/material.dart';

class DeliveryButton extends StatelessWidget {
  const DeliveryButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.padding = const EdgeInsets.all(14.0),
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: deliveryGredients,
            ),
          ),
          child: Padding(
            padding: padding,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
