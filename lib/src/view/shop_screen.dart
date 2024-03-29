import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:codify/src/service/shop_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          ShopProvider(), // Provide an instance of your data model

      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
            onPressed: () => GoRouter.of(context).go('/'),
          ),
          centerTitle: true,
          title: const Text(
            'About',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
          ),
          backgroundColor: const Color.fromARGB(255, 44, 44, 44),
          iconTheme: Theme.of(context).primaryIconTheme,
        ),
        backgroundColor: const Color.fromARGB(255, 242, 242, 242),
        body: const SingleChildScrollView(
          child: Center(
            child: ShopContent(),
          ),
        ),
      ),
    );
  }
}

late GoogleMapController mapController;

final LatLng _center = const LatLng(35.55771617311098, 45.42851667365644);

void _onMapCreated(GoogleMapController controller) {
  mapController = controller;
}

class ShopContent extends StatelessWidget {
  const ShopContent({super.key});

  _launchUrl(String myUrl) async {
    Uri _url = Uri.parse(myUrl);
    if (await launchUrl(_url)) {
      await launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    String services =
        "We are a group of developers serving various services in different fields such as (Mobile applications, Web application, Arduino services and selling, Database Management systems and etc..). Our intentions is our customers full satisfaction of the services that we are providing. ";
    // Access the provided data model using the Consumer widget
    const String email = "Codify.iq@gmail.com";
    const String phone = "+9647707706545";
    const String isOpen = "Open";
    // const Url  = "https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget";
    return Container(
      padding: const EdgeInsets.only(
        top: 24.0,
        right: 24.0,
        left: 24.0,
        bottom: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24.0),
            child: Image.asset(
              'assets/images/coverPage.png',
              fit: BoxFit.cover,
              height: 150,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              right: 24.0,
              left: 24.0,
              bottom: 8,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Codify",
                style: GoogleFonts.mPlusCodeLatin(
                  color: const Color.fromARGB(255, 44, 44, 44),
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(21, 76, 76, 76),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(22, 174, 174, 174)
                      .withOpacity(0.3), // Shadow color
                  spreadRadius: 5.0, // Spread radius
                  blurRadius: 10.0, // Blur radius
                  offset: const Offset(1, 4), // Offset
                )
              ],
              border: Border.all(
                color: Colors.white, // Set border color
                width: 10.0, // Set border width
              ),
              borderRadius: BorderRadius.circular(24.0), // Set border radius
            ),
            child: Column(
              children: [
                Text(
                  services,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.justify,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact Us:",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.email,
                            color: Color.fromARGB(255, 255, 123, 28),
                            size: 20,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            email,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.phone,
                            color: Color.fromARGB(255, 60, 124, 219),
                            size: 20,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            phone,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.lock,
                                color: Color.fromARGB(255, 68, 179, 40),
                                size: 20,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                isOpen,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () => _launchUrl(
                                    'https://www.facebook.com/Codify.iq/'),
                                child: const Icon(
                                  FontAwesomeIcons.squareFacebook,
                                  size: 18,
                                ),
                              ),
                              const SizedBox(width: 5),
                              InkWell(
                                onTap: () => _launchUrl(
                                    'https://www.instagram.com/codify.iq/?igsh=d20zODMxbXBjbzV4'),
                                child: const Icon(
                                  FontAwesomeIcons.squareInstagram,
                                  size: 18,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "Codify.iq",
                                style: Theme.of(context).textTheme.titleSmall,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Address",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color.fromARGB(255, 217, 217, 217),
                      ),
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 15, right: 15),
                      child: Text(
                        "Iraq - Sulaymaniyah - Ali Namali - 3rd floor - Store 39",
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      width: 3303,
                      // padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(21, 76, 76, 76),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(22, 174, 174, 174)
                                .withOpacity(0.3), // Shadow color
                            spreadRadius: 5.0, // Spread radius
                            blurRadius: 10.0, // Blur radius
                            offset: const Offset(1, 4), // Offset
                          )
                        ],
                        border: Border.all(
                          color: Colors.white, // Set border color
                          width: 10.0, // Set border width
                        ),
                        borderRadius:
                            BorderRadius.circular(24.0), // Set border radius
                      ),
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        mapType: MapType.normal,
                        initialCameraPosition: CameraPosition(
                          target: _center,
                          zoom: 15.0,
                        ),
                        markers: {
                          const Marker(
                            markerId: MarkerId('demo'),
                            position:
                                LatLng(35.55771617311098, 45.42851667365644),
                          )
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
