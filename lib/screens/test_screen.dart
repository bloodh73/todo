import 'package:flutter/material.dart';
import 'package:todo_hamed/responsive.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          if (Responsive.isMobile(context))
            Expanded(
              child: Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: Text(
                  'سایز موبایل',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

          if (Responsive.isTablet(context))
            Expanded(
              child: Container(
                color: Colors.yellow,
                alignment: Alignment.center,
                child: Text(
                  'سایز تبلت',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

          if (Responsive.isDesktop(context))
            Expanded(
              child: Container(
                color: Colors.green,
                alignment: Alignment.center,
                child: Text(
                  'سایز دسکتاپ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
