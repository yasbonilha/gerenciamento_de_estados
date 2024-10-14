import 'dart:async';
import 'package:email_validator/email_validator.dart';

mixin Validators{
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      //se o email for valido, adiciona-lo ao sink. se não, adicionar a mensagem "email invalido ao sink"
      String event;
      if(EmailValidator.validate(email)){
        event = email;
      }
      else {
        event = "e-mail inválido ao sink";
      }
      sink.add(event);
    }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      //se a senha for válida (>= que 4), adiciona-lo ao sink. se não, adicionar a mensagem "senha inválida ao sink"
      String event;
      if(password.length >= 4){
        event = password;
      }
      else {
        event = "senha inválida ao sink";
      }
      sink.add(event);
    }
  );
}
//pub.dev search e-mail validator
//flutter pub add email_validator