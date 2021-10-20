import 'package:flutter/material.dart';
import 'package:nectar/models/cart.dart';
import 'package:nectar/screens/cart_screen/widgets/bottom_check_out.dart';
import 'package:nectar/screens/cart_screen/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 25),
              child: Text(
                'My Cart',
                style: TextStyle(
                  color: Color(0xff181725),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: Divider(
                height: 2,
                color: Color(0xFFA1A1A1),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: AllCart().allCart.length,
                itemBuilder: (context, index) {
                  return CartItem(item: AllCart().allCart[index]);
                },
              ),
            ),
            BottomCheckOut(),
          ],
        ),
      ),
    );
  }
}
