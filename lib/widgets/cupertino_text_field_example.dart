import 'package:flutter/cupertino.dart';

class CupertinoTextFieldExample extends StatefulWidget {
  const CupertinoTextFieldExample({super.key});

  @override
  State<CupertinoTextFieldExample> createState() => _CupertinoTextFieldExampleState();
}

class _CupertinoTextFieldExampleState extends State<CupertinoTextFieldExample> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: CupertinoTextField(
            controller: _controller,
            placeholder: 'Mời bạn nhập vào tên của bạn',
            padding: const EdgeInsets.all(15.0),
            prefix: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(
                CupertinoIcons.person,
                color: CupertinoColors.systemGrey,
              ),
            ),
            suffix: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () =>  _controller.clear(),
                child: Icon(
                  CupertinoIcons.clear_thick_circled,
                  color: CupertinoColors.systemRed,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}