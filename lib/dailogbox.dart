import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogboxWidget extends StatefulWidget {
  const DialogboxWidget({super.key});

  @override
  State<DialogboxWidget> createState() => _DialogboxWidgetState();
}

class _DialogboxWidgetState extends State<DialogboxWidget> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Dailogbox"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  //Get.defaultDialog();
////////////////////////////// Propertise ////////////////////////////
                  Get.defaultDialog(
                    title: "Dialog Title",
                    titleStyle: const TextStyle(fontSize: 25.0),
                    middleText: "This is Middle Text",
                    middleTextStyle: const TextStyle(fontSize: 20.0),
                    backgroundColor: Colors.greenAccent,
                    radius: 50.0,
/////////////////// To Customise the middle text/////////////
                    content: const Row(
                      children: [
                        CircularProgressIndicator(
                            // strokeWidth: 15,
                            ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: Text("Data Loading"),
                        ),
                      ],
                    ),
/////////////////// Default Cancel and Confirm button ///////////////////
                    textCancel: "Cancel",
                    cancelTextColor: Colors.black,
                    textConfirm: "Confirm",
                    confirmTextColor: Colors.black,
                    onCancel: () {},
                    onConfirm: () {},
                    buttonColor: Colors.white,
/////////////////// Customise the default Cancel and Confim button //////////////////
                    cancel: const Text(
                      "Cancel",
                      style: TextStyle(color: Colors.indigo),
                    ),
                    confirm: const Text(
                      "Confirm",
                      style: TextStyle(color: Colors.indigo),
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("Action-1"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Action-2"),
                      ),
                    ],
                    barrierDismissible: false,
                  );
                },
                child: const Text("Show Dialog Box"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
