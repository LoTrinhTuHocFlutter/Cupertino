import 'package:flutter/cupertino.dart';

class CupertinoActionSheetExample extends StatelessWidget {
  const CupertinoActionSheetExample({super.key});

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text(
            'Tuỳ chọn',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: CupertinoColors.black,
              fontSize: 18.0,
            ),
          ),
          message: Text(
            'Hãy chọn một tuỳ chọn của riêng bạn',
          ),
          actions: [
            CupertinoActionSheetAction(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Chia sẻ cho bạn bè',
              ),
            ),
            CupertinoActionSheetAction(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Lưu vào lịch sử',
              ),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Huỷ bỏ',
              style: TextStyle(
                color: CupertinoColors.destructiveRed,
              ),
            ),
          ),
        );
      },
    );
  }

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
              color: CupertinoColors.activeOrange,
              onPressed: () => _showActionSheet(context),
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