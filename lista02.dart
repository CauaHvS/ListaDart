import 'dart:io';
import 'utils.dart';
import 'dart:core';

void main(){
  //mediaAluno();
  //pesoIdeal();
  //postoCombustivel();
  //aposentadoria();
  avaliador();
  
}
/*
Ler as notas (de 0 a 10) da 1a. e 2a. avaliações de um aluno. Calcular a média aritmética simples e escrever uma mensagem que diga se o aluno foi ou não aprovado (considerar que nota igual ou maior que 6 o aluno é aprovado). Escrever também a média calculada.
*/
void mediaAluno(){
  var aval=0;
  for(int i=1; i<=2; i++){
    stdout.write('\nInforme a nota da $i avaliação: '); 
     aval=aval + int.parse(stdin.readLineSync()!);
  }
  var media = aval/2;
  if(media<6){
    stdout.write('\nInfelizmente com a media de $media você não passou!');
  }else{
    stdout.write('\nParabens com a media de $media você passou!');
  }
}
/*
Tendo como dados de entrada o nome, a altura (em m) e o sexo (M ou F) de uma pessoa, calcule e mostre seu peso ideal, utilizando as seguintes fórmulas:
- para sexo masculino: peso ideal = (72.7 * altura) - 58
- para sexo feminino: peso ideal = (62.1 * altura) - 44.7
*/

void pesoIdeal(){
  var pesoIdeal;
  stdout.write("Olá,\nInforme seu nome: ");
  var nome = stdin.readLineSync();
  stdout.write("$nome informe a sua altura(m):");
  var altura  = double.parse(stdin.readLineSync()!);
  stdout.write("Sendo M para masculino e F para feminino.\n$nome informe o seu sexo:");
  var sexo = stdin.readLineSync()!;

  if(sexo.toUpperCase == "M"){
    pesoIdeal = (72.7 * altura)-58;
  }else{
    pesoIdeal = (62.1*altura)-44.7;
  }
  stdout.write("$nome o seu peso ideal é $pesoIdeal");
}
  /*
Um posto está vendendo combustíveis com a seguinte regra para os descontos:
1. Etanol
1. até 20 litros, desconto de 3% por litro
2. acima de 20 litros, desconto de 5% por litro
2. Gasolina
1. até 20 litros, desconto de 4% por litro
2. acima de 20 litros, desconto de 6% por litro
Escreva um programa que leia os valores dos preços dos litros de etanol e gasolina e o total de litros a abastecer, calcule e imprima a relação percentual entre o preço dos litros do etanol e da gasolina, qual a melhor opção de combustível e quanto seria pago pelo cliente em cada opção de combustível.  
*/
  
void postoCombustivel(){

  stdout.write("Informe o valor atual do litro do Etanol: ");
  var precoEtanol = double.parse(stdin.readLineSync()!);
    stdout.write("Informe o valor atual do litro da Gasolina: ");
  var precoGasolina = double.parse(stdin.readLineSync()!);

    stdout.write("Informe quantos litros irá abastecer; ");
  var combustivel = double.parse(stdin.readLineSync()!);

  var etanol, gasolina;
  
  if(combustivel <= 20){
    etanol = precoEtanol * 0.03 * combustivel;
    gasolina = precoGasolina * 0.04 * combustivel;
  }else{
    etanol = precoEtanol * 0.05 * combustivel;
    gasolina = precoGasolina * 0.06 * combustivel;
  }

  var finalEtanol, finalGasolina;

   stdout.write("Ao abastecer " +
      combustivel.toStringAsFixed(0) +
      "L você receberá um desconto de \nEtanol = R\$" +
      etanol.toStringAsFixed(2).replaceAll(".", ",") +
      " \nGasolina = R\$" +
      gasolina.toStringAsFixed(2).replaceAll(".", ","));
  stdout.write("\n=================================================================\n");

  finalGasolina = (precoGasolina * combustivel) - gasolina;
  finalEtanol = (precoEtanol * combustivel) - etanol;
  
  stdout.write(
      "O preço final após abastecer e aplicar os descontos, será de \nEtanol = R\$" +
          finalEtanol.toStringAsFixed(2).replaceAll(".", ",") +
          "\nGasolina = R\$" +
          finalGasolina.toStringAsFixed(2).replaceAll(".", ","));

  stdout.write(finalGasolina < finalEtanol
      ? "\nA melhor opção será abastecer com gasolina."
      : "\nA melhor opção será abastecer com etanol.");
}

void aposentadoria(){
  int anoAtual = DateTime.now().year;
  List funcionario = new List.empty(growable: true);
  funcionario.add(readString("Digite a matrícula do funcionário: "));
  funcionario.add(readInt("Digite o ano de nascimento: "));
  funcionario.add(readInt("Digite o ano de ingresso na primeira empresa do funcionário: "));

  num idade = anoAtual - funcionario[1];
  num tempoTrabalhado = anoAtual - funcionario[2]; 

  bool aprovado = false;

  if( idade >= 60){
    if( tempoTrabalhado >= 25 || idade >= 65){
      aprovado = true;
    }
  } else if (tempoTrabalhado >= 30){
    aprovado = true;
  }

    print("O funcionário ${funcionario[0]} tem $idade anos, já trabalhou $tempoTrabalhado anos. \n" + (aprovado ? "Requerer Aposentadoria" : "Não é possível requerer"));

}

void avaliador(){
  List notas = new List.empty(growable: true);
  double media = 0;
  notas.add(readString("Digite o nome do aluno: "));
  for(int i = 1; i < 4; i++){
    notas.add(readDouble("Digite a nota da ${i+1}° avaliação de ${notas[0]}"));
    media += notas[i];
  }
  
  media /= 3;

  String conceito = "";

  if(media < 6){
    conceito = "D";
  } else if (media < 7.5){
    conceito = "C";
  } else if (media < 9){
    conceito = "B";
  } else {
    conceito = "A";
  }

  print("O aluno ${notas[0]} com média $media teve a nota: $conceito");
}


int readInt(String msg){
    print(msg);
    return int.parse(stdin.readLineSync()!);
}

String readString(String msg){
    print(msg);
    return stdin.readLineSync()!;
}

double readDouble(String msg){
    print(msg);
    return double.parse(stdin.readLineSync()!);
}


