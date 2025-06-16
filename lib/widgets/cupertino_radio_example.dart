import 'package:flutter/cupertino.dart';

enum ColorOption {
  red,
  blue,
  green,
}

class CupertinoRadioExample extends StatefulWidget {
  const CupertinoRadioExample({super.key});

  @override
  State<CupertinoRadioExample> createState() => CupertinoRadioExampleState();
}

class CupertinoRadioExampleState extends State<CupertinoRadioExample> {
  ColorOption? _selectedColor = ColorOption.red;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoListTile(
              title: Text(
                'Màu đỏ',
              ),
              leading: CupertinoRadio(
                value: ColorOption.red,
                groupValue: _selectedColor,
                onChanged: (ColorOption? value) {
                  setState(() {
                    _selectedColor = value;
                  });
                },
              ),
            ),
            CupertinoListTile(
              title: Text(
                'Màu xanh dương',
              ),
              leading: CupertinoRadio(
                value: ColorOption.blue,
                groupValue: _selectedColor,
                onChanged: (ColorOption? value) {
                  setState(() {
                    _selectedColor = value;
                  });
                },
              ),
            ),
            CupertinoListTile(
              title: Text(
                'Màu xanh lá',
              ),
              leading: CupertinoRadio(
                value: ColorOption.green,
                groupValue: _selectedColor,
                onChanged: (ColorOption? value) {
                  setState(() {
                    _selectedColor = value;
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