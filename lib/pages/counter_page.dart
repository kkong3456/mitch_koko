import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter=0;
  void _incrementCounter(){
    setState((){
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text('XXX'),
        backgroundColor: Colors.blue,
        centerTitle:true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text('You pushed the button this many times'),
            Text(_counter.toString(),style:const TextStyle(fontSize:40,)),
            ElevatedButton(
              onPressed:_incrementCounter,
              child:const Text('Click')
            )
          ],
        ),
      )
    );
  }
}
