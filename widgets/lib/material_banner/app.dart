import 'package:flutter/material.dart';

class CMaterialBanner extends StatelessWidget {
  const CMaterialBanner({
    super.key,
  });

  @override
  Widget build(context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showMaterialBanner(
            MaterialBanner(
              padding: const EdgeInsets.all(12),
              leading: const Icon(
                Icons.notifications_active,
              ),
              elevation: 5,
              content: const Text('Subscribe'),
              backgroundColor: Colors.white,
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                  },
                  child: const Text('Dismiss'),
                ),
              ],
            ),
          );
        },
        child: const Text('open!'),
      ),
    );
  }
}
