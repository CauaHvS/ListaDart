import 'dart:io';

void main() {
  area();

  //idadeDias();

  //custoConsumidor();

  //percentEleicoes();

  //temperatura();
}

void area() {
  stdout.write('Informe a altura: ');
  var altura = int.parse(stdin.readLineSync()!);

  stdout.write("Informe a largura: ");
  var largura = int.parse(stdin.readLineSync()!);

  double area = 0;
  area = (altura * largura) / 2;

  print('A area do local é de ${area}m');
}

void idadeDias() {
  stdout.write("Informe quantos anos você tem: ");
  var anos = int.parse(stdin.readLineSync()!);

  stdout.write("\nInforme quantos meses você tem: ");
  var meses = int.parse(stdin.readLineSync()!);

  stdout.write("\nInforme quantos dias você tem: ");
  var dias = int.parse(stdin.readLineSync()!);

  var total = (anos * 365) + (meses * 30) + dias;
  print("");
  print('Você possui ${total} dias de vida!');
}

void custoConsumidor() {
  stdout.write("\nInforme o custo de fabrica do produuto: ");
  var custoFabrica = double.parse(stdin.readLineSync()!);

  var custoTotal = (custoFabrica * 0.28) + (custoFabrica * 0.45) + custoFabrica;
  print("");
  print('O valor total do produto é de R\$${custoTotal}');
}

void percentEleicoes() {
  stdout.write("Informe a quantidade de eleitores do municipio: ");
  var eleitores = int.parse(stdin.readLineSync()!);

  stdout.write("\nInforme a quantidade de votos brancos do municipio: ");
  var vtBrancos = int.parse(stdin.readLineSync()!);

  stdout.write("\nInforme a quantidade de votos nulos do municipio: ");
  var vtNulos = int.parse(stdin.readLineSync()!);

  stdout.write("\nInforme a quantidade de votos validos do municipio: ");
  var vtValidos = int.parse(stdin.readLineSync()!);

  var percentVB = vtBrancos * 100 / eleitores;
  var percentVN = vtNulos * 100 / eleitores;
  var percentVV = vtValidos * 100 / eleitores;
  var percentTotal = percentVV + percentVN + percentVB;

  if (percentTotal == 100) {
    print(
        'A porcentagem de votos brancos que o municipio possui é de ${percentVB}% dos votos');
    print(
        'A porcentagem de votos nulos que o municipio possui é de ${percentVN}% dos votos');
    print(
        'A porcentagem de votos validos que o municipio possui é de ${percentVV}% dos votos');
    print('Totalizando ${percentTotal}% dos votos');
  } else {
    print(
        "você informou uma quantidade de votos maior do que a quantidade de eleitores");
    print('Totalizando ${percentTotal}% dos votos');
    print('Tente novamente!');
  }
}

void temperatura() {
  stdout.write(
      "Informe qual a temperatura em graus fahrenheit deseja converter: ");
  var fahrenheit = double.parse(stdin.readLineSync()!);
  var celcius = ((fahrenheit - 32) / 9) * 5;

  print('A temperatura convertida para graus celcius é de ${celcius}°');
}
