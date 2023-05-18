class Imc {
  calcularImc(double altura, int peso) {
    double imc;
    imc = peso / (altura * altura);
    return imc;
  }

  tabelaImc(double valor) {
    if (valor < 18.5) {
      return "seu imc é de $valor, você está abaixo do peso";
    } else if (valor > 18.5 && valor < 24.9) {
      return "seu imc é de $valor, você está com peso normal";
    } else if (valor > 25 && valor < 29.9) {
      return "seu imc é de $valor, você está com sobre peso";
    } else if (valor > 30.0 && valor < 34.9) {
      return "seu imc é de $valor, você está com obesidade grau 1";
    } else if (valor > 35.0 && valor < 39.9) {
      return "seu imc é de $valor, você está com obesidade grau 2";
    } else if (valor > 40.0) {
      return "seu imc é de $valor, você está com obesidade grau 3";
    }
  }
}
