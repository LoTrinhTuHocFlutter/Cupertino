import 'package:flutter/cupertino.dart';

class CupertinoActivityIndicatorExample extends StatelessWidget {
  const CupertinoActivityIndicatorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoActivityIndicator(
          radius: 20.0,
          animating: true,
        ),
      ),
    );
  }
}