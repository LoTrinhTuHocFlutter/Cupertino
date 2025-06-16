import 'package:flutter/cupertino.dart';

class CupertinoSearchTextFieldExample extends StatefulWidget {
  const CupertinoSearchTextFieldExample({super.key});

  @override
  State<CupertinoSearchTextFieldExample> createState() =>
      _CupertinoSearchTextFieldExampleState();
}

class _CupertinoSearchTextFieldExampleState extends State<CupertinoSearchTextFieldExample> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: CupertinoSearchTextField(
            controller: _searchController,
            placeholder: 'Tìm kiếm',
            backgroundColor: CupertinoColors.systemGrey5,
          ),
        ),
      ),
    );
  }
}