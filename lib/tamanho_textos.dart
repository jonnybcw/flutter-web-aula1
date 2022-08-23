import 'package:flutter/material.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';

class TamanhoTextos extends StatefulWidget {
  const TamanhoTextos({Key? key}) : super(key: key);

  @override
  _TamanhoTextosState createState() => _TamanhoTextosState();
}

class _TamanhoTextosState extends State<TamanhoTextos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tamanho de textos'),
      ),
      body: Column(
        children: const [
          Text(
            'Lorem impsum sit dolor amet consensdj dfinifi nnu nui inuh un nn'
            'Lorem impsum sit dolor amet consensdj dfinifi nnu nui inuh un nn'
            'Lorem impsum sit dolor amet consensdj dfinifi nnu nui inuh un nn'
            'Lorem impsum sit dolor amet consensdj dfinifi nnu nui inuh un nn',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 50,
          ),
          AutoSizeText(
            'Lorem impsum sit dolor amet consensdj dfinifi nnu nui inuh un nn'
            'Lorem impsum sit dolor amet consensdj dfinifi nnu nui inuh un nn'
            'Lorem impsum sit dolor amet consensdj dfinifi nnu nui inuh un nn'
            'Lorem impsum sit dolor amet consensdj dfinifi nnu nui inuh un nn',
            style: TextStyle(fontSize: 30),
            // maxLines: 2,
            // minFontSize: 14,
            // overflow: TextOverflow.ellipsis,

            // maxLines: 2,
            // minFontSize: 10,
            // stepGranularity: 10,

            maxLines: 3,
            presetFontSizes: [30, 22, 10],
          ),
        ],
      ),
    );
  }
}
