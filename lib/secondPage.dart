import 'package:get/get.dart';
import 'package:flutter/material.dart';


class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Screen Two'),
            ElevatedButton(
              onPressed: () {
                // Navigate back to the previous screen using GetX
                Get.back(); // like pop
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}




class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to Screen Two using GetX
            Get.off(ScreenTwo());
            //Get.offAll(ScreenTwo()); this like tell stack to remove all previous widgets(context) and rest just ScreenTwo()
            //Get.to(ScreenTwo())
          },
          child: Text('Go to Screen Two'),
        ),
      ),
    );
  }
}
