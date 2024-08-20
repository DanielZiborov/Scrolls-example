import 'package:flutter/material.dart';
import 'package:scrolls/widgets/scroll.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Example"),
          centerTitle: true,
        ),
        body: const Scroll(),
      ),
    );
  }
}
