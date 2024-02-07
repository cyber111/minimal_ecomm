import 'package:flutter/cupertino.dart';
import 'package:minimal_ecomm/models/product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    //1
    Product(
        name: 'Patek Philippe - Nautilus SELF-WINDING',
        description:
            'The steel Nautilus, endowed with an Annual Calendar and moon-phase display, now features a new blue dial inspired from the dial color of the original Nautilus model of 1976. Horizontal embossing and subtle grading from blue to black',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/5726_1A_014_1.jpg',
        price: 1400000),
    //2
    Product(
        name: 'Patek Philippe Nautilus 7118/1A-001',
        description:
            'The steel Nautilus, endowed with an Annual Calendar and moon-phase display, now features a new blue dial inspired from the dial color of the original Nautilus model of 1976. Horizontal embossing and subtle grading from blue to bla',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/5990_1A_011_1.jpg',
        price: 100000),
    //3
    Product(
        name: 'Patek Philippe 5990/1R - NAUTILUS SELF-WINDING',
        description:
            'Patek Philippe presents the Nautilus Travel Time Chronograph Reference 5990/1 in a generous rose gold version contrasting with the sunburst blue dial featuring an embossed horizontal pattern and applied hour-markers. The baton-style hands are in rose gold with a luminescent coating. This new model combines three highly sought-after complications: a self-winding flyback chronograph, an easy-to-use Travel Time function (dual time-zone), and a date display, coupled with local time.',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/5990_1R_001_1.jpg',
        price: 499000),
    //4
    Product(
        name: 'Patek Philippe 5719/10G - NAUTILUS SELF-WINDING',
        description:
            'With the rounded octagonal shape of its bezel, the ingenious porthole construction of its case, and its horizontally embossed dial, the Nautilus has epitomized the elegant sports watch since 1976. Forty years later, it comprises a splendid collection of models for men and women. In steel, rose gold, white gold or two-tone combinations they accompany the most active lifestyles with incomparable class.',
        imagePath: 'https://static.patek.com/images/articles/face_white/350/5719_10G_010.jpg',
        price: 794825),
  ];

  final List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    if (_cart.isNotEmpty) _cart.remove(product);
    notifyListeners();
  }
}
