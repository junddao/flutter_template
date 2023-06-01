import 'package:flutter/material.dart';

class NetworkErrorScreen extends StatelessWidget {
  const NetworkErrorScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Image.asset(
          "assets/images/network_connection_failed.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}