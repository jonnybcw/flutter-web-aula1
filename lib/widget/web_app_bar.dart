import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            'imagens/logo.png',
            fit: BoxFit.contain,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_rounded),
          ),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Cadastrar'),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              primary: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Entrar'),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.orange,
              primary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
