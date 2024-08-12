import 'package:flutter/material.dart';

class CPreferredSize extends StatelessWidget {
  const CPreferredSize({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
          80,
        ),
        child: Container(
          height: 120,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.blue,
                Colors.cyan,
              ],
            ),
          ),
          child: ListTile(
            title: const Text('Preferred Size!'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 20,
              ),
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
