import 'package:flutter/material.dart';

import '../analytics/widgets/line_graph/line_graph_income.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Text('cards'),
          ),
        ),
      ),
    );
  }
}
