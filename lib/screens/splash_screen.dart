import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 260,
            ),
            SizedBox(
              child: Image.asset(
                'assests/images/whatsapp-logo.png',
                height: 60,
                width: 60,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 260,
            ),
            Center(
              child: Column(
                children: [
                  const Text(
                    "from",
                    style: TextStyle(
                        color: Color.fromRGBO(133, 149, 159, 1), fontSize: 14),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assests/images/Meta_logo.png',
                        height: 20,
                        width: 20,
                      ),
                      const Text(
                        " Meta",
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
