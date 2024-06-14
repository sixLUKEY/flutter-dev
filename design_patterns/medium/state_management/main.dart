class CounterController {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
  }
}

class CounterView extends StatefulWidget {
  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: ${controller.count}'),
        RaisedButton(
          onPressed: () {
            controller.increment();
            setState(() {});
          },
          child: Text('Increment'),
        ),
      ],
    );
  }
}
