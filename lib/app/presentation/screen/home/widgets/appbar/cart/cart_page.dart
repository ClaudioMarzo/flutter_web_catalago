import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/color_style.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: ColorStyle.i.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: const Padding(
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 5,
          top: 5,
        ),
        child: Icon(
          Icons.shopping_cart_outlined,
        ),
      ),
    );
  }
}
