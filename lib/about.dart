import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: Text("About Us")),
      body: Center(
        child: Text("BOBKOV ESTATE IMPROVEMENT LTD.\n\n"
            "M060 - 1554 Carling Ave.\n"
            "Ottawa ON K1Z 7M4\n\n"
            "(819) 639 - 4478\n"
            "bobkovestateimprovement@gmx.com",
            textAlign: TextAlign.center),
      ),
    );
  }
}