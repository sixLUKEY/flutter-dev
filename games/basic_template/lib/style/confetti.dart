import 'dart:collection';
import 'dart:math';

import 'package:flutter/widgets.dart';

// Shows a confetti (celebratory) animation: paper snippings falling down.
// The widget fills the whole space (like sizebox.expand() would)
// When `isStopped` is true, the aniation will not run. This is useful when the widget is not visible yet
class Confetti extends StatefulWidget {
  static const _defaultColors = [
    Color(0xffd10841),
    Color(0xff1d75fb),
    Color(0xff0050bc),
    Color(0xffa2dcc7),
  ];

  final bool isStopped;

  final List<Color> colors;

  const Confetti({
    this.colors = _defaultColors,
    this.isStopped = false,
    super.key,
  });

  @override
  State<Confetti> createState() => _ConfettiState();
}

class ConfettiPainter extends CustomPainter {
  final defaultPaint = Paint();

  final int snippingsCount = 200;

  late final List<_PaperSnipping> _snippings;

  Size? _size;

  DateTime _lastTime = DateTime.now();

  final UnmodifiableListView<Color> colors;

  ConfettiPainter(
      {required Listenable animation, required Iterable<Color> colors})
      : colors = UnmodifiableListView(colors),
        super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    if (_size == null) {
      // First time we have a size
      _snippings = List.generate(snippingsCount, (i) => _PaperSnipping());
    }
  }
}
