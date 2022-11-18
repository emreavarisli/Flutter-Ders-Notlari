import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(separatorBuilder: (context, index) {
        return const Divider(); 
        }, itemBuilder: (context, index) {
        print(index);
        return Column(
          children: [const Placeholder(color: Colors.red), Text('$index')],
        );
      }, itemCount: 15),
    );
  }
}
