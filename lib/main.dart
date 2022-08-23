import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_aula1/regras_layout.dart';
import 'package:flutter_web_aula1/responsividade_media_query.dart';
import 'package:flutter_web_aula1/responsividade_row_col.dart';
import 'package:flutter_web_aula1/responsividade_wrap.dart';
import 'package:flutter_web_aula1/tamanho_proporcional.dart';
import 'package:flutter_web_aula1/tamanho_textos.dart';

import 'diferentes_tamanhos.dart';
import 'loja_virtual.dart';
import 'orientacao.dart';

void main() {
  runApp(DevicePreview(
      builder: (context) => MaterialApp(
            title: 'Flutter Web',
            debugShowCheckedModeBanner: false,

            // Device preview
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),

            // home: ResponsividadeMediaQuery(),
            // home: ResponsividadeRowCol(),
            // home: ResponsividadeWrap(),
            // home: Orientacao(),
            // home: RegrasLayout(),
            // home: LojaVirtual(),
            // home: TamanhoTextos(),
            // home: TamanhoProporcional(),
            home: const DiferentesTamanhos(),
          )));
}
