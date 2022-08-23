import 'package:flutter/material.dart';
import 'package:flutter_web_aula1/widget/item_produto.dart';
import 'package:flutter_web_aula1/widget/mobile_app_bar.dart';
import 'package:flutter_web_aula1/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  _LojaVirtualState createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  _ajustarVisualizacao(double largura) {
    int colunas = 2;
    if (largura <= 600) {
      colunas = 2;
    } else if (largura <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }
    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      var largura = constraint.maxWidth;
      var alturaBarra = AppBar().preferredSize.height;

      return Scaffold(
        appBar: largura < 600
            ? PreferredSize(
                child: const MobileAppBar(),
                preferredSize: Size(largura, alturaBarra),
              )
            : PreferredSize(
                child: const WebAppBar(),
                preferredSize: Size(largura, alturaBarra),
              ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: _ajustarVisualizacao(largura),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: const [
              ItemProduto("Notebook Acer", "2.500,00", "p1.jpg"),
              ItemProduto("Pneu Goodyear aro 16", "800,00", "p2.jpg"),
              ItemProduto("Samsung S9", "4.500,00", "p3.jpg"),
              ItemProduto("Samsung Edge", "2.150,00", "p4.jpg"),
              ItemProduto("Galaxy S10", "6.500,00", "p5.jpg"),
              ItemProduto("iPhone 10", "1.900,20", "p6.jpg"),
            ],
          ),
        ),
      );
    });
  }
}
