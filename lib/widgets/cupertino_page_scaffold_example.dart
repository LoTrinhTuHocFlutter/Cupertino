import 'package:flutter/cupertino.dart';

class CupertinoPageScaffoldExample extends StatelessWidget {
  const CupertinoPageScaffoldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'CupertinoPageScaffold',
        ),
      ),
      backgroundColor: CupertinoColors.systemGrey5,
      child: Center(
        child: Text(
          'Nội dung hiển thị ở đây',
        ),
      ),
    );
  }
}