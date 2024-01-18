import 'package:codify/src/service/shop_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final shopProvider = Provider.of<ShopProvider>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Codify",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
              letterSpacing: 0.8),
        ),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Password: ${shopProvider.shop?.password ?? 'N/A'}"),
          Text("email: ${shopProvider.shop?.email ?? 'N/A'}"),
          Text("close from: ${shopProvider.shop?.closeFrom ?? 'N/A'}"),
          Text("close till: ${shopProvider.shop?.closeTill ?? 'N/A'}"),
          Text("service: ${shopProvider.shop?.service ?? 'N/A'}"),
          Text("tax: ${shopProvider.shop?.tax ?? 'N/A'}"),
          Text("isBusy: ${shopProvider.shop?.isBusy ?? 'N/A'}"),
          Text("longitude: ${shopProvider.shop?.longitude ?? 'N/A'}"),
          Text("latitude: ${shopProvider.shop?.latitude ?? 'N/A'}"),
          Text("image: ${shopProvider.shop?.image ?? 'N/A'}"),
          Text("preOrderDay: ${shopProvider.shop?.preOrderDay ?? 'N/A'}"),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () => GoRouter.of(context).push('/shop'),
            child: const Text("Update"),
          )
        ],
      )),
    );
  }
}
