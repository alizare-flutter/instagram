import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/data/constants/constants.dart';

class SwitchAccount extends StatelessWidget {
  const SwitchAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/switch_account_background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Container(
                  width: 340,
                  height: 352,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.5),
                        Colors.white.withOpacity(0.2),
                      ],
                    ),
                  ),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: 32),
                            Image.asset('images/profile.png'),
                            SizedBox(height: 20),
                            Text(
                              "Amir Ahmad Adibi",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Confrim"),
                              style:
                                  Theme.of(context).elevatedButtonTheme.style,
                            ),
                            SizedBox(height: 32),
                            Text(
                              "switch Account",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 163,
              bottom: 63,
            ),
            child: Row(
              children: [
                Text(
                  "don't have an account",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
