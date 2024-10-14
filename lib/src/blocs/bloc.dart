import 'dart:async';
import 'package:gerenciamento_de_estados/src/blocs/validators.dart';

class Bloc with Validators{
  final _emailController = StreamController <String> ();
  final _passwordController = StreamController <String> ();
  //classe streamcontroller é uma classe genérica (polimorfismo paramétrico).

  //email.listen ao inves de emailController.stream.listen
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);

  //changeEmail ao inves de emailController.sink.add(). esse método está devolvendo para mim a função add (estou fazendo o emailController absorver o evento que acabou de acontecer)
Function(String) get changeEmail => _emailController.sink.add; //aqui estamos passando a função (cidadã de primeira classe), não o resultado produzido por ela (até porque ela não produz resultado nenhum - ela é do tipo void.). a função que estamos passando é uma Function que recebe uma string.

Function(String) get changePassword => _passwordController.sink.add;

void dispose(){ //para fecharmos os recursos computacionais. esse nome dispose é arbitrário.
  _emailController.close();
  _passwordController.close();
}
}
//se o nome da variavel começa com underscore, ela é private (encapsulamento em dart)
// quando um método recebe um método ou devolve um metodo, dizemos que ele é um método de mais alta ordem.
//transformer - uma validação 
//quando usamos o blox, abrimos esse recurso computacional. por isso, precisamos fechá-lo.