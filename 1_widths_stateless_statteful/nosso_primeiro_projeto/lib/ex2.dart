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
          title: Text('Tarefas'),
        ),
        body: ListView(
          children: [
            Task('Aprender Flutter no café da manhã comento sucrilhos '),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Andar de bike'),
            Task('Meditar'),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;

  const Task(this.nome, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                      ),
                      Container(
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: TextStyle(
                                fontSize: 24, overflow: TextOverflow.ellipsis),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel++;
                            });
                            print(nivel);
                          },
                          child: Icon(Icons.arrow_drop_up))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: nivel / 10,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Nível :$nivel'
                        '',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter: Primeiros Passos'),
//         ),
//         body: ListView(
//           children: [
//             RowQuadrados(
//               cor1: Colors.cyanAccent,
//               cor2: Colors.blue,
//               cor3: Colors.yellow,
//             ),
//             RowQuadrados(
//               cor1: Colors.grey,
//               cor2: Colors.cyan,
//               cor3: Colors.green,
//             ),
//             RowQuadrados(
//                 cor1: Colors.purple,
//                 cor2: Colors.lightGreenAccent,
//                 cor3: Colors.pinkAccent)
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(onPressed: () {}),
//       ),
//     );
//   }
// }
//
// class RowQuadrados extends StatelessWidget {
//   final Color cor1;
//   final Color cor2;
//   final Color cor3;
//
//   const RowQuadrados(
//       {Key? key, required this.cor1, required this.cor2, required this.cor3})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         child: Row(
//           children: [
//             Retangulo(cor1),
//             Retangulo(cor2),
//             Retangulo(cor3),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Retangulo extends StatelessWidget {
//   final Color cor;
//
//   const Retangulo(this.cor, {Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100,
//       height: 140,
//       color: cor,
//     );
//   }
// }
