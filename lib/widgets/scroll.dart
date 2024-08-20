/*
import 'package:flutter/material.dart';

class Scroll extends StatefulWidget {
  Scroll({super.key});

  @override
  State<Scroll> createState() => _ScrollState();
}

class _ScrollState extends State<Scroll> {
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4)).then((value) {
      controller.animateTo(1000,
          duration: const Duration(seconds: 2), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    var items = <Widget>[];
    for (var i = 0; i < 200; i++) {
      final widget = Text('${i}');
      items.add(widget);
    }

    return SingleChildScrollView(
      controller: controller,
      child: Container(
        width: double.infinity,
        child: Column(
          children: items,
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';

class Scroll extends StatelessWidget {
  const Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: ListView.builder(
        addAutomaticKeepAlives: true,
        itemBuilder: (BuildContext context, int index) {
          return  Ex(text:'$index');
        },
        
      ),
    );
  }
}

class Ex extends StatefulWidget {
  final String text;
  const Ex({super.key, required this.text});

  @override
  State<Ex> createState() => _ExState();

}

class _ExState extends State<Ex> with AutomaticKeepAliveClientMixin{
  late final controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.text);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
    );
  }
  
  @override
  bool get wantKeepAlive => true;
}
