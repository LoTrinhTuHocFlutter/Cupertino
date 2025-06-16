import 'package:flutter/cupertino.dart';

class CupertinoPageRouteExample extends StatelessWidget {
  const CupertinoPageRouteExample({super.key});

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
              onPressed: () => Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => SecondPage(),
                ),
              ),
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

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Trang thứ hai',
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