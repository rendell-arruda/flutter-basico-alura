import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        color: Colors.black,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    color: Colors.orange,
                    width: 100,
                    height: 100,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.cyan,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    color: Colors.blueAccent,
                    width: 100,
                    height: 100,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Container(
                  color: Colors.purple,
                  width: 100,
                  height: 100,
                ),
                  Container(
                    color: Colors.pink,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    color: Colors.white,
                    width: 100,
                    height: 100,
                  )],
              )
            ]),
      ),
    );
  }
}

// Container(
// color: Colors.white,
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Stack(
// alignment: AlignmentDirectional.center,
// children: [
// Container(
// color: Colors.blue,
// width: 75,
// height: 75,
// ),
// Container(
// color: Colors.yellow,
// width: 37,
// height: 37,
// )
// ],
// ),
// Stack(
// alignment: AlignmentDirectional.center,
// children: [
// Container(
// color: Colors.yellow,
// width: 75,
// height: 75,
// ),
// Container(
// color: Colors.blue,
// width: 37,
// height: 37,
// )
// ],
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Container(
// color: Colors.cyan,
// width: 50,
// height: 50,
// ),
// Container(
// color: Colors.pink,
// width: 50,
// height: 50,
// ),
// Container(
// color: Colors.purple,
// width: 50,
// height: 50,
// )
// ],
// ),
// Container(
// color: Colors.amber,
// width: 300,
// height: 30,
// child: Text(
// 'Hello World',
// style: TextStyle(
// color: Colors.black,
// fontSize: 28,
// ),
// textAlign: TextAlign.center,
// ),
// ),
// ElevatedButton(
// onPressed: () {
// print('Você apertou o botão');
// },
// child: Text('Aperte o botão!'),
// )
// ],
// ),
// ),
