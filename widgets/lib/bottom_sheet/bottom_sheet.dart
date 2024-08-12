import 'package:flutter/material.dart';

class CBottomSheet extends StatelessWidget {
  const CBottomSheet({
    super.key,
  });

  @override
  Widget build(context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext ctx) => SizedBox(
              height: 400,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Close'),
                ),
              ),
            ),
          );
        },
        child: const Text('Open Modal'),
      ),
    );
  }
}
