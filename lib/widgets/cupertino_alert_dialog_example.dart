import 'package:flutter/cupertino.dart';

class CupertinoAlertDialogExample extends StatelessWidget {
  const CupertinoAlertDialogExample({super.key});

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
              color: CupertinoColors.systemPink,
              child: Text(
                'Bấm vào đây',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
              ),
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoAlertDialog(
                      title: Text(
                        'Cảnh báo',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      content: const Text(
                        'Bạn có muốn thoát không?',
                      ),
                      actions: [
                        CupertinoDialogAction(
                          child: const Text(
                            'Hủy',
                            style: TextStyle(
                              color: CupertinoColors.black,
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        CupertinoDialogAction(
                          isDefaultAction: true,
                          child: const Text(
                            'Đồng ý',
                            style: TextStyle(
                              color: CupertinoColors.black,
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}