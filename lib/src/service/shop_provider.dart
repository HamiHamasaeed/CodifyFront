import 'package:flutter/material.dart';
import '../model/shop.dart';

class ShopProvider extends ChangeNotifier {
  Shop? _shop;

  Shop? get shop => _shop;

  void getShopData(
    String password,
    String email,
    DateTime closeFrom,
    DateTime closeTill,
    int service,
    double tax,
    double longitude,
    double latitude,
    String image,
    bool isBusy,
    int preOrderDay,
  ) {
    _shop = Shop(
      password = 'pass',
      email = 'Codify.iq@gmail.com',
      closeFrom = DateTime(2024, 1, 12, 5, 5),
      closeTill = DateTime(2024, 1, 12, 5, 5),
      service = 5,
      tax = 0.5,
      longitude = 0820.445,
      latitude = 2452.542,
      image = "assets/images/coverPage.png",
      isBusy = false,
      preOrderDay = 0,
    );

    notifyListeners();
  }
}
