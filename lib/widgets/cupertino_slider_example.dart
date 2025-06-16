import 'package:flutter/cupertino.dart';

class CupertinoSliderExample extends StatefulWidget {
  const CupertinoSliderExample({super.key});

  @override
  State<CupertinoSliderExample> createState() => _CupertinoSliderExampleState();
}

class _CupertinoSliderExampleState extends State<CupertinoSliderExample> {
  double _sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoSlider(
          value: _sliderValue,
          min: 0.0,
          max: 1.0,
          thumbColor: CupertinoColors.systemPink,
          onChanged: (double newValue) {
            setState(() {
              _sliderValue = newValue;
            });
          },
        ),
      ),
    );
  }
}