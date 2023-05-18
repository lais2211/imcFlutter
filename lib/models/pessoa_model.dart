// ignore_for_file: public_member_api_docs, sort_constructors_first
class Pessoa {
  int peso;
  double altura;
  double imc;

  Pessoa(
    this.peso,
    this.altura,
    this.imc,
  );

  Future<int> setPeso(int newPeso) async => peso = newPeso;

  int getPeso() {
    return peso;
  }

  Future<double> setAltura(double newAltura) async => altura = newAltura;

  double getAltura() {
    return altura;
  }

  Future<double> setImc(double newImc) async => imc = newImc;

  double getImc() {
    return imc;
  }
}
