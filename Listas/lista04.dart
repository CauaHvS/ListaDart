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
    if(valor_saque < saldo){
      saldo = saldo - valor_saque;
      print("$nome_cliente você acaba de sacar $valor_saque");
    }else{
      print("Saldo Insuficiente!\n O seu saldo é de $saldo");
    }
    return saldo;
  }

  depositar(valor_deposito){
    saldo = saldo + valor_deposito;
    print("$nome_cliente você acaba de depositar R\$ $valor_deposito\n O seu saldo é de $saldo");
    return saldo;
  }

  transferir(){
    
  }

  void imprimirConta(){

    stdout.write("\n===================");
    stdout.write("\n Extrato Bancario ");
    stdout.write("\n===================");
    stdout.write("\nNome: $nome_cliente");
    stdout.write("\nNumero da conta: $numero_conta");
    stdout.write("\nSaldo: $saldo");
    stdout.write("\nLimite: $limite");
    stdout.write("\n===================");
  }

 
  
  
}


void main(){

  //List<Conta_bancaria> Contas = List.empty(growable: true);
  int? opcao;
  int numconta;
  var conta;
  
  do{
    
    stdout.write("\n1. Abrir Conta\n");
    stdout.write("2.Sacar\n");
    stdout.write("3.Depositar\n");
    stdout.write("4.Transferir\n");
    stdout.write("5.Imprimir conta\n");
    stdout.write("6.Sair\n");
    opcao = int.parse(stdin.readLineSync()!);
    
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
        
        conta = Conta_bancaria(numero_conta, nome_cliente, saldo_cliente, limite_cliente);
        stdout.write("Conta Aberta!\n");
        break;
      case 2:
        stdout.write("Informe o valor que vai sacar:");
        var valor_saque = double.parse(stdin.readLineSync()!);
        stdout.write("\n");
        conta.sacar(valor_saque);
        break;
      case 3:
        stdout.write("Informe o valor que vai depositar:");
        var valor_deposito = double.parse(stdin.readLineSync()!);
        stdout.write("\n");
        conta.depositar(valor_deposito);
        break;
      case 4:
        conta.transferir();
        break;
      case 5:
        conta.imprimirConta();
        break;
      case 6:
        print("Saindo!");
        break;
      default:
        break;
        
    }
  }while(opcao != 6);
  
}