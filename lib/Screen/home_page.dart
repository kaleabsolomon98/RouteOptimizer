import 'package:flutter/material.dart';
import 'package:webview/Util/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: appBar("Route optimaization"),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor,
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * .02,
                          horizontal: size.width * 0.2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {
                      //Routing to the MapRouting Page.
                      Navigator.pushNamed(context, 'MapRouting');
                    },
                    child: const Text(
                      "Go to Map",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ]));
  }
}
