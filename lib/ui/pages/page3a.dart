import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/responsive_widget.dart';

class Page3A extends StatefulWidget {
  const Page3A({super.key});

  @override
  State<Page3A> createState() => _Page3AState();
}

class _Page3AState extends State<Page3A> {
  //todo:  should be 'Give me candy' or 'No candy for me'
  String currentSelection =
      '...'; // should be 'Give me candy' or 'No candy for me'

  @override
  Widget build(BuildContext context) {
    return ResponsiveContainer(
      child: Scaffold(
        appBar: AppBar(title: Text('Option A'), key: const Key('appBar')),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Bottom Sheet modal.'),
              const SizedBox(height: 20),
              Text(currentSelection, key: const Key('currentSelection')),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Get.bottomSheet(
                    backgroundColor: Colors.white,
                    Wrap(
                      children: <Widget>[
                        ListTile(
                            leading: const Icon(Icons.food_bank),
                            title: const Text('I like candy'),
                            key: const Key('likeCandyTile'),
                            onTap: () {
                              //todo: Implement logic to change the currentSelection to 'Give me candy'
                              Get.back();
                            }),
                        ListTile(
                          key: const Key('noCandyTile'),
                          leading: const Icon(Icons.close),
                          title: const Text('I don´t like candy'),
                          onTap: () {
                            //todo: Implement logic to change the currentSelection to 'No candy for me'
                            Get.back();
                          },
                        ),
                      ],
                    )),
                key: const Key('elevatedButton'),
                child: const Text('Show Bottom Sheet modal'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        )),
      ),
    );
  }
}
