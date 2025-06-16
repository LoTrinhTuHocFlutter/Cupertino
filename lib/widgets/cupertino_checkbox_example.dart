import 'package:flutter/cupertino.dart';

class CupertinoCheckboxExample extends StatefulWidget {
  const CupertinoCheckboxExample({super.key});

  @override
  State<CupertinoCheckboxExample> createState() =>
      _CupertinoCheckboxExampleState();
}

class _CupertinoCheckboxExampleState extends State<CupertinoCheckboxExample> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoCheckbox(
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue;
            });
          },
        ),
      ),
    );
  }
}