import 'package:flutter/material.dart';



class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 400.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/cover.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/profile.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Kate'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
