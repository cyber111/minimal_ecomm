import 'package:flutter/material.dart';
import 'package:minimal_ecomm/components/big_icon.dart';
import 'package:minimal_ecomm/components/my_button.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            const BigIcon(iconData: Icons.shopping_bag,),
            const SizedBox(height: 30),
            //title
            const Text('Minimal E-comm', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 10),
            //subtitle
            Text('Welcome to the store', style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)),
            const SizedBox(height: 100),
            //Get Started
            MyButton(onTap: () => Navigator.pushNamed(context, '/shop_page'), child: const Text('Get Started'))
          ],
        ),
      ),
    );
  }
}
