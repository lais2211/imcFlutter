import 'package:flutter/material.dart';
import 'package:imc_flutter/models/pessoa_model.dart';
import 'package:imc_flutter/services/imc.dart';

class DadosController {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  Pessoa pessoa = Pessoa(0, 0, 0);

  String resposta = "";
  double resultado = 0;

  Imc calcular = Imc();

  List<Pessoa> tabela = [];

  getDados() {
    try {
      if (pesoController.text.isNotEmpty && alturaController.text.isNotEmpty) {
        pessoa.peso = int.parse(pesoController.text);
        pessoa.altura = double.parse(alturaController.text);

        pessoa.imc = calcular.calcularImc(pessoa.altura, pessoa.peso);

        resposta = calcular.tabelaImc(pessoa.imc);
        tabela.add(pessoa);
        return resposta;
      }
    } catch (e) {
      print(Error());
    }
  }
}
