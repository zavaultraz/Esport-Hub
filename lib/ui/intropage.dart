import 'package:flutter/material.dart';
import 'package:lister/component/tombol.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 30, 112, 255),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Spacing for top padding
              const SizedBox(height: 25.0),

              // App Name
              Text(
                'ESPORT HUB',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),

              // Center mascot image with adjusted padding
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.0),
                  child: Image.asset(
                    'assets/images/mascot.png',
                    height: 300, // adjust height as needed
                  ),
                ),
              ),

              // Main tagline
              Text(
                'THE PLACE FOR     E-SPORT MANIA',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  height: 1.2,
                ),
              ),

              // Description text
              Text(
                'Platform esport terbaik untuk para pecinta esport dunia',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                  height: 1.8,
                ),
              ),
const SizedBox(height: 20,),
              // Call to action button
              Mybutton(
                text: 'Get Started',
                onTap: () {
                  Navigator.pushNamed(context, '/test');
                },
              ),

              // Bottom spacing
              const SizedBox(height: 25.0),
            ],
          ),
        ),
      ),
    );
  }
}
