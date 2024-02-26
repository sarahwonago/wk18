import 'package:flutter/material.dart';

class MyUI extends StatelessWidget {
  const MyUI({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          color: Colors.blue,
          child: const Center(
            child: Text('My Container'),
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) => Card(
              child: Center(
                child: Text('Item $index'),
              ),
            ),
            itemCount: 4,
          ),
        ),
        TextButton(
          onPressed: () {
          },
          child: const Text('Hello'),
        ),
      ],
    );
  }
}
