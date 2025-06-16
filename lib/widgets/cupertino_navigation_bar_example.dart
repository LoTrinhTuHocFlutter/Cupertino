import 'package:flutter/cupertino.dart';

class CupertinoNavigationBarExample extends StatelessWidget {
  const CupertinoNavigationBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('CupertinoNavigationBar'),
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Text(
            'Quay lại',
          ),
          onPressed: () => debugPrint('Nhấn vào nút Quay lại'),
        ),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Text(
            'Lưu',
          ),
          onPressed: () => debugPrint('Bấm vào nút Lưu'),
        ),
      ),
      child: const Center(
        child: Text(
          'Nội dung hiển thị ở đây',
        ),
      ),
    );
  }
}