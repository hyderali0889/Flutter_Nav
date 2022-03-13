import 'package:flutter/material.dart';
import 'contact.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          alignment: Alignment.center,
          child: const Center(child: Text("Home")),
        ),
        TextButton.icon(
            onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Contact())))
                },
            icon: const Icon(Icons.adb_outlined),
            label: const Text("Go To Contacts"))
      ]),
    );
  }
}
