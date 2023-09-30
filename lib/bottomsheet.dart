import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomsheetWidget extends StatelessWidget {
  const BottomsheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Sheet"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
/////////////////// Propertise /////////////////////////////
                  Get.bottomSheet(
                    Wrap(
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_outlined),
                          title: const Text("Light Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.wb_sunny),
                          title: const Text("Dark Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                    barrierColor: Colors.greenAccent.shade400,
                    backgroundColor: Colors.yellowAccent,
                    isDismissible: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: const BorderSide(
                        color: Colors.indigo,
                        style: BorderStyle.solid,
                        width: 2.0,
                      ),
                    ),
                    //enableDrag: false,
                  );
                },
                child: const Text("Bottom Sheet"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
