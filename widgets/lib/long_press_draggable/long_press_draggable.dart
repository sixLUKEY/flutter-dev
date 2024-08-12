import 'package:flutter/material.dart';

class CLongPressDraggable extends StatefulWidget {
  const CLongPressDraggable({
    super.key,
  });

  @override
  State<CLongPressDraggable> createState() => _CLongPressDraggable();
}

class _CLongPressDraggable extends State<CLongPressDraggable> {
  Offset _offset = const Offset(200, 250);
  @override
  Widget build(context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            Positioned(
              left: _offset.dx,
              top: _offset.dy,
              child: LongPressDraggable(
                feedback: Image.network(
                  "https://tinyurl.com/95ncjeuu",
                  width: 40,
                ),
                child: Image.network(
                  "https://tinyurl.com/95ncjeuu",
                  width: 40,
                ),
                onDragEnd: (details) {
                  setState(() {
                    double adjustment = MediaQuery.of(context).size.height -
                        constraints.maxHeight;
                    _offset = Offset(
                      details.offset.dx,
                      details.offset.dy - adjustment,
                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
