import 'package:flutter/material.dart';

class PercentageBar extends StatefulWidget {
  final Stream stream;
  final String title;

  const PercentageBar({
    Key? key,
    required this.stream,
    required this.title,
  }) : super(key: key);

  @override
  _PercentageBarState createState() => _PercentageBarState();
}

class _PercentageBarState extends State<PercentageBar> {
  double value = 0.0;

  @override
  void initState() {
    super.initState();
    widget.stream.listen((event) {
      setState(() => value = event);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${widget.title} ${value.toStringAsFixed(0)}%"),
        LinearProgressIndicator(
          value: value / 100,
          minHeight: 10,
        )
      ],
    );
  }
}
