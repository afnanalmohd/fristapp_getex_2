import 'package:flutter/material.dart';
import 'package:fristapp_getex/controller/home_controller.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD6ADAD),
        title: Text("Counter "),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<home_controller>(
              init: home_controller(),
                builder: (controller) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: IconButton(
                            onPressed: () {
                              controller.incremrnt();
                            },
                            icon: Icon(
                              Icons.add,
                              size: 40,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "${controller.counter}",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: IconButton(
                            onPressed: () {
                              controller.dicremnt();
                            },
                            icon: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        )
                      ],
                    ))
          ],
        ),
      ),
    );
  }
}
