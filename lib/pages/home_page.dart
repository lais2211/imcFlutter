import 'package:flutter/material.dart';

import '../controllers/dados_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DadosController controller = DadosController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Calculadora de IMC'),
            titleTextStyle: const TextStyle(color: Colors.white),
            backgroundColor: const Color.fromARGB(255, 17, 46, 69)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextField(
                      decoration: const InputDecoration(
                          hintText: "Digite seu peso:",
                          hintStyle: TextStyle(color: Colors.white)),
                      keyboardType: TextInputType.number,
                      controller: controller.pesoController,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextField(
                      decoration: const InputDecoration(
                          hintText: "Digite sua altura:",
                          hintStyle: TextStyle(color: Colors.white)),
                      keyboardType: TextInputType.number,
                      controller: controller.alturaController,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 26, 99, 159))),
                onPressed: () {
                  setState(() {
                    controller.getDados();
                  });
                },
                child: const Text('Calcular'),
              ),
              ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.tabela.length,
                  itemBuilder: (_, index) {
                    var itemTabela = controller.tabela[index];
                    return SizedBox(
                      height: 80,
                      child: Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(25),
                        color: Color.fromARGB(255, 17, 46, 69),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                ("Altura: ${itemTabela.altura.toString()}"),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                ("Peso: ${itemTabela.peso.toString()}"),
                              ),
                            ),
                            Expanded(
                              child: Text("Imc: ${itemTabela.imc.toString()}"),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ));
  }
}
