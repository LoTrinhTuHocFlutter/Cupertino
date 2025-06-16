import 'package:flutter/cupertino.dart';

class CupertinoButtonExample extends StatelessWidget {
  const CupertinoButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoButton(
              borderRadius: BorderRadius.circular(5.0),
              color: CupertinoColors.systemBlue,
              pressedOpacity: 0.6,
              onPressed: () => debugPrint('CupertinoButton'),
              child: Text(
                'Bấm vào đây',
                style: TextStyle(
                  color: CupertinoColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}