import 'dart:io';

import 'package:flutter/material.dart';

class ButtonLearn extends StatefulWidget{
  const ButtonLearn({super.key});

  @override
  State<ButtonLearn> createState() => _ButtonLearnState();
}

class _ButtonLearnState extends State<ButtonLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:  [
          TextButton(
              child: Text('Save', style: Theme.of(context).textTheme.subtitle1),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
                if(states.contains(MaterialState.pressed)) {
                  return Colors.green;
            }
                return Colors.white;
            })),
            onPressed: () {},
          ),
          const ElevatedButton(onPressed: null, child: const Text('data')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_outlined)),
          FloatingActionButton(
            onPressed: () {},
            // servise istek at
            // sayfanin rengini düzenle
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red, padding: const EdgeInsets.all(10)),
            onPressed: () {},
            child: const SizedBox(width: 200, child: Text('data'))),
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.black, shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))
              )),
              onPressed: () {},
              child: Padding(

                padding: const EdgeInsets.only(top: 20, bottom: 20, right: 40, left: 40),
                child: Text(
                  'Place Bid',
                  style: Theme.of(context).textTheme.headline4,
          ),
              )),
        ],
      ),
    );
  }
}