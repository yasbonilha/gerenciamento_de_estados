import 'package:flutter/material.dart';
import 'package:gerenciamento_de_estados/src/telas/login_tela.dart'; //podemos fazer o import dos nossos arquivos como pacotes dentro da nossa aplicação - algo relacionado à pasta lib.

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: Scaffold(
        body: LoginTela(),
      ),
    );
  }
}
