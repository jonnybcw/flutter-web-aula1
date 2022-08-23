import 'package:flutter/material.dart';

class DiferentesTamanhos extends StatefulWidget {
  const DiferentesTamanhos({Key? key}) : super(key: key);

  @override
  _DiferentesTamanhosState createState() => _DiferentesTamanhosState();
}

class _DiferentesTamanhosState extends State<DiferentesTamanhos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diferentes tamanhos'),
      ),
      body: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 200,
              color: Colors.orange,
              child: const Text('Item 1'),
            ),
            Container(
              width: 200,
              color: Colors.green,
              child: const Text(
                  'Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 Item 2 '),
            ),
          ],
        ),
      ),
    );
  }
}
