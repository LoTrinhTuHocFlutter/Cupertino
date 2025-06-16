import 'package:flutter/cupertino.dart';

class CupertinoPickerExample extends StatefulWidget {
  const CupertinoPickerExample({super.key});

  @override
  State<CupertinoPickerExample> createState() => _CupertinoPickerExampleState();
}

class _CupertinoPickerExampleState extends State<CupertinoPickerExample> {
  int _selectedIndex = 0;
  final List<String> _options = [
    'Táo',
    'Chuối',
    'Đào',
    'Chanh',
    'Nho',
    'Mít',
    'Đu đủ',
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bạn đã chọn: ${_options[_selectedIndex]}',
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  borderRadius: BorderRadius.circular(5.0),
                  color: CupertinoColors.systemBlue,
                  pressedOpacity: 0.6,
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) => Container(
                        height: 200.0,
                        color: CupertinoColors.systemBackground,
                        child: CupertinoPicker(
                          itemExtent: 32.0,
                          scrollController: FixedExtentScrollController(
                            initialItem: _selectedIndex,
                          ),
                          onSelectedItemChanged: (index) {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          children: _options.map((item) => Text(item)).toList(),
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Chọn loại quả',
                    style: TextStyle(
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}