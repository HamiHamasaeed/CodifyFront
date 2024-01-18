import 'package:codify/src/service/shop_provider.dart';
import 'package:codify/src/view/home_screen.dart';
import 'package:codify/src/view/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ChangeNotifierProvider(
        create: (context) => ShopProvider(),
        child: MaterialApp.router(
          routerConfig: _router,
          debugShowCheckedModeBanner: false,
          title: 'Codify',
          theme: ThemeData(
              textTheme: GoogleFonts.madaTextTheme(
                Theme.of(context).textTheme,
              ),
              primarySwatch: Colors
                  .blue, // You can choose any primary color, it will be overridden by the color scheme
              hintColor: Colors
                  .orangeAccent, // You can choose any accent color, it will be overridden by the color scheme
              colorScheme: const ColorScheme(
                primary: Color(
                    0xFF007EC8), // You can choose any color for primary variant
                secondary: Color(
                    0xFFFF8951), // You can choose any color for secondary variant
                surface: Colors.white, // You can choose any color for surface
                background:
                    Colors.white, // You can choose any color for background
                error: Colors.red, // You can choose any color for error
                onPrimary:
                    Colors.white, // You can choose any color for onPrimary
                onSecondary:
                    Colors.white, // You can choose any color for onSecondary
                onSurface:
                    Colors.black, // You can choose any color for onSurface
                onBackground:
                    Colors.black, // You can choose any color for onBackground
                onError: Colors.white, // You can choose any color for onError
                brightness: Brightness.light,
              )),
        ));
  }

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const MyHomePage(),
      ),
      GoRoute(
        path: "/shop",
        builder: (context, state) => const ShopScreen(),
      )
    ],
  );
}
