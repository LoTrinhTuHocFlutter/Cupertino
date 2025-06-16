import 'package:flutter/cupertino.dart';

class CupertinoScrollbarExample extends StatelessWidget {
  const CupertinoScrollbarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoScrollbar(
        thumbVisibility: true,
        radius: Radius.circular(20.0),
        thickness: 5.0,
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Center(
              child: Text(
                '$index',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}