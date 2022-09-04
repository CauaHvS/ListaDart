import 'dart:io';
import 'utils.dart';
import 'dart:core';
import 'dart:math';

void main(){
  //notasAlunos();
  //notasAlunosCompleto();
  //numAleatorios();
  atualizaEmail();
}

void notasAlunos(){
  int temp = 0, soma = 0;
  List notas = List.empty(growable: true);

  do{
    temp = readInt("Digite a nota: ");
    if (temp > -1 && temp < 11){
      notas.add(temp);
      soma += temp;
      print("Digite [-1] para fechar \n");
      continue;
    }
    if (temp != -1)
      print("Nota inválida, digite novamente!");
  } while (temp != -1);

  double media = soma/notas.length;
  int maiorQueMedia = 0;

  for(int i = 0; i < notas.length; i++)
    if(notas[i] > media)
      maiorQueMedia++;
  
  print("A quantidade de alunos foi: ${notas.length}\nA média foi $media\nA quantidade de aluno(s) acima da média foi(ram) $maiorQueMedia aluno(s)");
}


//Exercicio 2
void notasAlunosCompleto(){
  String nome = "";
  int soma = 0;
  List notas = List.empty(growable: true);
  
  do{
    nome = readString("\nDigite o nome do aluno: ['Sair'] para fechar");
    if (nome != "sair"){
      String email = readString("Digite o email de $nome: ");
      int nota = readInt("Digite a nota de $nome: ");
      
      while (0 > nota || 10 < nota){
        nota = readInt("Digite uma nota válida para $nome: ");
      }

      soma += nota;

      Map aluno = {'Nome' : nome, 'Email': email, 'Nota': nota};
      notas.add(aluno);
      continue;
    }
  } while (nome != "Sair");

  double media = soma / notas.length;

  print("\nA média da turma foi: $media");

  for (int i = 0; i < notas.length; i++){
    if (notas[i]['Nota'] > media){
      print("===============================");
      print("O(a) Aluno(a): ${notas[i]['Nome']} \nEmail: ${notas[i]['Email']} \nTirou ${notas[i]['Nota']} pontos!");
    }
  }
}


//Exercicio 3
void numAleatorios(){
  //Lista de nomes para automatizar email e nome do dicionário.
  List nomes = ["Jordon Ramsey", "Sahara Mosley", "Deontae Arnold", "Jasmyne Stamper", 
  "Lacy Arthur", "Ashlee Morin", "Gregory Marsh", "Josefina Busby", "Maverick Dutton",
  "Josh Bartels"];

  String nome = "";
  int soma = 0;
  List notas = List.empty(growable: true);
  List numeros = List.empty(growable: true);
  int quantAluno = readInt("Digite a quantidade de alunos: ");
  
  //Gerar Numeros Aleatorios
  for(int i = 0; i < quantAluno; i++)
    numeros.add(Random().nextInt(10));
  
  for( int i = 1; i < quantAluno; i++){
    nome = nomes[numeros[i] % nomes.length];
    if (nome != "sair"){
      String email = nome.split(" ").join().toLowerCase() + "@gmail.com";
      int nota = numeros[i];

      soma += nota;

      Map aluno = {'Nome' : nome, 'Email': email, 'Nota': nota};
      notas.add(aluno);
      continue;
    }
  }

  double media = soma / notas.length;
  int acimaDaMedia = 0;

  print("\nA média da turma foi: $media");

  for (int i = 0; i < notas.length; i++){
    if (notas[i]['Nota'] > media){
      acimaDaMedia++;
      print("===============================");
      print("O(a) Aluno(a): ${notas[i]['Nome']} \nEmail: ${notas[i]['Email']} \nTirou ${notas[i]['Nota']} pontos!");
    }
  }  
  print("\nUm total de $acimaDaMedia aluno(s) acima da média!");

}


//Exercicio 4
void atualizaEmail(){
  //Lista de nomes para automatizar email e nome do dicionário.
  List nomes = ["Jordon Ramsey", "Sahara Mosley", "Deontae Arnold", "Jasmyne Stamper", 
  "Lacy Arthur", "Ashlee Morin", "Gregory Marsh", "Josefina Busby", "Maverick Dutton",
  "Josh Bartels"];

  String nome = "";
  int soma = 0;
  List notas = List.empty(growable: true);
  List numeros = List.empty(growable: true);
  int quantAluno = readInt("Digite a quantidade de alunos: ");
  
  //Gerar Numeros Aleatorios entre 7 e 10
  for(int i = 0; i < quantAluno; i++){
    Random num = new Random();
    int numero = num.nextInt(10);
    
    //Filtrar entre 7 e 10
    while(numero < 7 || numero > 10){
      numero = num.nextInt(10);
    }
    numeros.add(numero);
  }
  
  //Fazer o Dicionário e gerar os nomes
  for( int i = 1; i < quantAluno; i++){
    nome = nomes[Random().nextInt(10) % nomes.length]; // Agora o nome é gerado "aleatorio" também.
    if (nome != "sair"){
      String email = nome.split(" ").join().toLowerCase() + "@gmail.com";
      int nota = numeros[i];
      soma += nota;

      Map aluno = {'Nome': nome, 'Email': email, 'Nota': nota};
      notas.add(aluno);
      continue;
    }
  }

  double media = soma / notas.length;
  int acimaDaMedia = 0;

  print("\nA média da turma foi: $media");

  for (int i = 0; i < notas.length; i++){
    if (notas[i]['Nota'] > media){
      acimaDaMedia++;
      print("===============================");
      print("O(a) Aluno(a): ${notas[i]['Nome']} \nEmail: ${notas[i]['Email']} \nTirou ${notas[i]['Nota']} pontos!");
    }
  }  
  
  print("\nUm total de $acimaDaMedia aluno(s) acima da média!");
  print(notas);
}