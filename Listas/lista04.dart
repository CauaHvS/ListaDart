import 'dart:io';

class Conta_bancaria{
  int? _numero_conta;
  String? _nome_cliente;
  double? _saldo;
  double? _limite;


  
  
  Conta_bancaria(this._numero_conta, this._nome_cliente, this._saldo, this._limite);

get numero_conta => _numero_conta;
 set numero_conta(num_conta) => _numero_conta;
 get nome_cliente => _nome_cliente;
 set nome_cliente(nome) => _nome_cliente;
 get saldo => _saldo;
 set saldo(valor) => _saldo;
 get limite => _limite;
 set limite(valor) => _limite;

  sacar(valor_saque){ 
    if(valor_saque<saldo){
      saldo = saldo - valor_saque;
      print("$nome_cliente você acaba de sacar $valor_saque");
    }else{
      print("Saldo Insuficiente!");
    }
    
  }

  depositar(valor_deposito){
    saldo = saldo + valor_deposito;
    print("$nome_cliente você acaba de depositar R\$ $valor_deposito.");
    return saldo;
  }

  transferir(){
    
  }

  void imprimirConta(){
    
  }

 
  
  
}


void main(){

  int? opcao;
  int numconta = 1;
  do{
    
    stdout.write("1. Abrir Conta\n");
    stdout.write("2.Sacar\n");
    stdout.write("3.Depositar\n");
    stdout.write("4.Transferir\n");
    stdout.write("5.Imprimir conta\n");
    stdout.write("6.Sair\n");
    var opcao = int.parse(stdin.readLineSync()!);
    
    switch(opcao){
      
      case 1:
        
        stdout.write("Olá você está criando uma nova conta bancaria!\nPrecisaremos de alguns dados para a criação da conta.\n");
        stdout.write("\n");
        stdout.write("Favor informe o numero da conta:");
        var numero_conta = int.parse(stdin.readLineSync()!);
        stdout.write("\n");
        stdout.write("Favor informe o seu nome:");
        var nome_cliente = stdin.readLineSync()!;
        stdout.write("\n");
        stdout.write("Favor informe o seu saldo:");
        var saldo_cliente = double.parse(stdin.readLineSync()!);
        stdout.write("\n");
        stdout.write("Favor informe o seu limite de credito:");
        var limite_cliente = double.parse(stdin.readLineSync()!);
        stdout.write("\n");
        
        var conta = Conta_bancaria(numero_conta, nome_cliente, saldo_cliente, limite_cliente);
        stdout.write("Conta Aberta!\n");
        
        numconta++;
        print("$numconta");
        break;
      case 2:
        print("Sacando");
        
    }
    
  }while(opcao != 6);
  
  
}