import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the current date
    DateTime currentDate = DateTime.now();

    // Format the date as "EEE, dd MMM yyyy" (e.g., "Mon, 19 Feb 2024")
    String formattedDate = DateFormat('EEE, dd MMM yyyy').format(currentDate);

    return Scaffold(
      body: Column(
        children: [
          // Row A with 40% height
          Expanded(
            flex: 4, // 40% of the available height
            child: Container(
              color: Colors.blue, // Background color for Row A
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Image',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          // Row B with 60% height
          Expanded(
            flex: 6, // 60% of the available height
            child: Container(
                child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      'assets/logos/CBI-logo.png',
                      width: 100.0, // Adjust the width of the image
                      height: 100.0,
                    ),
                  )),
                ),
                // Second quarter of Row B
                Container(
                  // color: Colors.yellow,
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Monitoring Traksi',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF164283),
                      ),
                    ),
                  )),
                ),
                // Third quarter of Row B
                Container(
                  color: Colors.orange,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 50.0,
                        right: 50.0), // Adjust the horizontal padding as needed
                    child: Center(
                      child: Text(
                        'Periksa & Lapor Kesehatan Unit Kendaraan Kerja Secara Online',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                // Fourth quarter of Row B
                Container(
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'v 1.5.47',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
