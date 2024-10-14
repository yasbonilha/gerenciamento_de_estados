import 'package:flutter/material.dart';

class LoginTela extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [ //o senhoooor tem muitos filhos, muitos filhos ele tem KKKKKKKKKKKK
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.only(top: 12.0),
            child: Row(
              children:[
                Expanded(
                  child: submitButton()
                )
              ]
            )
            ,
          )
        ]
      )
    );
  }

  
  Widget emailField() {
    return TextField(
      //restringir o tipo do teclado para que ele exiba a maneira apropriada para a digitação de e-mails
      keyboardType: TextInputType.emailAddress,
      //exibir um texto explicando para o usuário o que ele deve digitar (ou seja, uma espécie de placeholder)
      decoration: InputDecoration(
        hintText: "seu@email.com",
        labelText: "digite seu e-mail",
        ),
    );
  }

  Widget passwordField(){ //devolvemos um widget pois é mais genérico (aplicação que aplica um princípio "programa voltada a uma interface e nao a uma aplicacao") - mais fácil de dar manutenção
    return TextField(
      //ocultar o texto, fazendo as bolinhas aparecerem quando o usuário digita
      obscureText: true,
      decoration: InputDecoration(
        hintText: "senha",
        labelText: "digite sua senha",
      ),
    );
  }

  Widget submitButton(){
    return ElevatedButton(
      onPressed: (){}, 
      child: Text("login"),
      );
  }
}