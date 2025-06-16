import 'package:flutter/cupertino.dart';

class CupertinoListTileExample extends StatelessWidget {
  const CupertinoListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: ListView(
        children: [
          CupertinoListTile(
            leading: Icon(
              CupertinoIcons.bell,
            ),
            title: Text(
              'Thông báo',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Bạn có 3 thông báo mới',
            ),
            trailing: Icon(
              CupertinoIcons.right_chevron,
            ),
            backgroundColor: CupertinoColors.white,
            onTap: () => debugPrint('Đây là CupertinoListTile'),
          ),
        ],
      ),
    );
  }
}