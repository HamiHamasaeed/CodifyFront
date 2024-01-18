import 'package:codify/src/service/shop_provider.dart';
import 'package:codify/src/view/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';


class MyHomePage extends StatelessWidget {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    final shopProvider = Provider.of<ShopProvider>(context);
    final navigatonProvider = Provider.of<ShopProvider>(context);

    final _pageOption =[
      ShopScreen(),
      HomePage()
    ];

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
      body: _pageOption[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
currentIndex: selectedPage,

        backgroundColor: const Color.fromARGB(255, 0, 126, 200),
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: FaIcon(FontAwesomeIcons.house),
            backgroundColor: const Color.fromARGB(255, 0, 126, 200),
          ),
          BottomNavigationBarItem(
            label: 'Trending',
            icon: FaIcon(FontAwesomeIcons.fire),
            backgroundColor: const Color.fromARGB(255, 0, 126, 200),
          ),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: FaIcon(FontAwesomeIcons.heart),
            backgroundColor: const Color.fromARGB(255, 0, 126, 200),
          ),
          BottomNavigationBarItem(
            label: 'Messages',
            icon: FaIcon(FontAwesomeIcons.message),
            backgroundColor: const Color.fromARGB(255, 0, 126, 200),
          ),
          BottomNavigationBarItem(
            label: 'User',
            icon: FaIcon(FontAwesomeIcons.user),
            backgroundColor: const Color.fromARGB(255, 0, 126, 200),
          ),
        ],
        onTap: (index){
          setState((){

          }

          );
        },
      ),
    );
  }
  
  void setState(Null Function() param0) {}
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
         Text("text1"),
         Text("text2"),
      ])),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: const Color.fromARGB(255, 0, 126, 200),
      //   items: [
      //     BottomNavigationBarItem(
      //       label: 'Home',
      //       icon: FaIcon(FontAwesomeIcons.house),
      //       backgroundColor: const Color.fromARGB(255, 0, 126, 200),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'Trending',
      //       icon: FaIcon(FontAwesomeIcons.fire),
      //       backgroundColor: const Color.fromARGB(255, 0, 126, 200),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'Favorite',
      //       icon: FaIcon(FontAwesomeIcons.heart),
      //       backgroundColor: const Color.fromARGB(255, 0, 126, 200),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'Messages',
      //       icon: FaIcon(FontAwesomeIcons.message),
      //       backgroundColor: const Color.fromARGB(255, 0, 126, 200),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'User',
      //       icon: FaIcon(FontAwesomeIcons.user),
      //       backgroundColor: const Color.fromARGB(255, 0, 126, 200),
      //     ),
      //   ],
      // ),
    );
  }
}
