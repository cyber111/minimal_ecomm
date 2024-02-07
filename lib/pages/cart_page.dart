import 'package:flutter/material.dart';
import 'package:minimal_ecomm/components/product_tile.dart';
import 'package:minimal_ecomm/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, shop, child) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            backgroundColor: Colors.transparent,
            title: Text(
              'Cart',
              style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          body: shop.cart.isEmpty
              ? const Center(
                  child: Text('Cart is Empty'),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    final product = shop.cart[index];
                    return ListTile(
                      shape: const BeveledRectangleBorder(),
                      title: Text(product.name),
                      subtitle: Text('₹ ${product.price.toString()}'),
                      trailing: IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(content: const Text('Remove this your cart ?'), actions: [
                              MaterialButton(
                                onPressed: () {
                                  shop.removeFromCart(product);
                                  Navigator.pop(context);
                                },
                                child: const Text('Remove'),
                              ),
                              MaterialButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Cancel'),
                              ),
                            ]),
                          );
                        },
                        icon: const Icon(Icons.remove),
                      ),
                    );
                  },
                  itemCount: shop.cart.length,
                ),
        );
      },
    );
  }
}
