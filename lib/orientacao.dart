import 'package:flutter/material.dart';

class Orientacao extends StatefulWidget {
  const Orientacao({Key? key}) : super(key: key);

  @override
  _OrientacaoState createState() => _OrientacaoState();
}

class _OrientacaoState extends State<Orientacao> {
  @override
  Widget build(BuildContext context) {
    double altura = 100;
    double largura = 230;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientacao'),
      ),
      body: OrientationBuilder(
        builder: (context, orientacao) {
          // return Container(
          //   child: orientacao == Orientation.portrait
          //       ? const Text('Portrait')
          //       : const Text('Landscape'),
          // );
          return GridView.count(
            crossAxisCount: orientacao == Orientation.portrait ? 2 : 4,
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.pink,
              ),
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.amber,
              ),
            ],
          );
        },
      ),
    );
  }
}
