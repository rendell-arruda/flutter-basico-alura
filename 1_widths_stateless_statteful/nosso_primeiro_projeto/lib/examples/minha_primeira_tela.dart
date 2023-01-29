import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.blue,
                width: 75,
                height: 75,
              ),
              Container(
                color: Colors.yellow,
                width: 37,
                height: 37,
              )
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.yellow,
                width: 75,
                height: 75,
              ),
              Container(
                color: Colors.blue,
                width: 37,
                height: 37,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.cyan,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.pink,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.purple,
                width: 50,
                height: 50,
              )
            ],
          ),
          Container(
            color: Colors.amber,
            width: 300,
            height: 30,
            child: const Text(
              'Hello World',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // print('Você apertou o botão');
            },
            child: const Text('Aperte o botão!'),
          )
        ],
      ),
    );
  }
}
