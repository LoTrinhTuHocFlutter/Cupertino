import 'package:flutter/cupertino.dart';

class CupertinoContextMenuExample extends StatelessWidget {
  const CupertinoContextMenuExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoContextMenu(
          actions: [
            CupertinoContextMenuAction(
              trailingIcon: CupertinoIcons.heart_fill,
              onPressed: () => Navigator.pop(context),
              child: Text('Thích'),
            ),
            CupertinoContextMenuAction(
              trailingIcon: CupertinoIcons.share,
              onPressed: () => Navigator.pop(context),
              child: Text('Chia sẻ'),
            ),
          ],
          child: Icon(
            CupertinoIcons.chat_bubble_2_fill,
            color: CupertinoColors.activeBlue,
          ),
        ),
      ),
    );
  }
}