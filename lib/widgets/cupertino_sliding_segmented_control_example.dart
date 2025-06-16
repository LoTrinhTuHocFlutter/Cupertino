import 'package:flutter/cupertino.dart';

class CupertinoSlidingSegmentedControlExample extends StatefulWidget {
  const CupertinoSlidingSegmentedControlExample({super.key});

  @override
  State<CupertinoSlidingSegmentedControlExample> createState() =>
      _CupertinoSlidingSegmentedControlExampleState();
}

class _CupertinoSlidingSegmentedControlExampleState
    extends State<CupertinoSlidingSegmentedControlExample> {
  int _currentIndex = 0;

  final Map<int, Widget> _segmentTitles = const {
    0: Text('Chi tiêu'),
    1: Text('Thu nhập'),
  };

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 15.0,
            ),
            CupertinoSlidingSegmentedControl(
              children: _segmentTitles,
              groupValue: _currentIndex,
              backgroundColor: CupertinoColors.systemGrey5,
              thumbColor: CupertinoColors.activeGreen,
              onValueChanged: (int? newValue) {
                if (newValue != null) {
                  setState(() {
                    _currentIndex = newValue;
                  });
                }
              },
            ),
            const SizedBox(
              height: 24.0,
            ),
            Expanded(
              child: _buildContent(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    if (_currentIndex == 0) {
      return const ExpensesPage();
    } else {
      return const IncomePage();
    }
  }
}

class ExpensesPage extends StatelessWidget {
  const ExpensesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Trang Chi Tiêu',
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class IncomePage extends StatelessWidget {
  const IncomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Trang Thu Nhập',
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}