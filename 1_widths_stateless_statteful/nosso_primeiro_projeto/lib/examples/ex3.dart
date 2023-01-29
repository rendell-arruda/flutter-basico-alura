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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter: Primeiros Passos'),
        ),
        body: ListView(
          children: const [
            RowQuadrados(
                altura: 100,
                largura: 100,
                cor1: Colors.cyanAccent,
                cor2: Colors.blue,
                cor3: Colors.yellow,
                icone: Icons.arrow_circle_up_outlined),
            RowQuadrados(
                altura: 100,
                largura: 100,
                cor1: Colors.grey,
                cor2: Colors.cyan,
                cor3: Colors.green,
                icone: Icons.arrow_circle_up_outlined),
            RowQuadrados(
                altura: 100,
                largura: 100,
                cor1: Colors.purple,
                cor2: Colors.lightGreenAccent,
                cor3: Colors.pinkAccent,
                icone: Icons.arrow_circle_up_outlined)
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class RowQuadrados extends StatelessWidget {
  final double largura;
  final double altura;
  final Color cor1;
  final Color cor2;
  final Color cor3;
  final IconData icone;

  const RowQuadrados({
    Key? key,
    required this.largura,
    required this.altura,
    required this.cor1,
    required this.cor2,
    required this.cor3,
    required this.icone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: largura,
            height: altura,
            decoration: BoxDecoration(
                color: cor1, borderRadius: BorderRadius.circular(5)),
          ),
          Container(
            width: largura,
            height: altura,
            decoration: BoxDecoration(
                color: cor2, borderRadius: BorderRadius.circular(5)),
            child: Icon(icone),
          ),
          Container(
            width: altura,
            height: largura,
            decoration: BoxDecoration(
                color: cor3, borderRadius: BorderRadius.circular(5)),
          ),
        ],
      ),
    );
  }
}

// class Retangulo extends StatelessWidget {
//   final Color cor;
//   final IconData icone;
//
//   const Retangulo(this.icone, this.cor, {Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     IconData? icone;
//     return Stack(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//               color: cor, borderRadius: BorderRadius.circular(15)),
//           width: 100,
//           height: 140,
//           child: Icon(icone),
//         ),
//       ],
//     );
//   }
// }
