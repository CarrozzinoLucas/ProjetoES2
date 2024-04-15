import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

List<dynamic> numeroDeAssentos = ["Selecione", 1, 2, 3, 4];

class RegistroDeCarro extends StatefulWidget {
  final int? criarEditar;

  const RegistroDeCarro({super.key, this.criarEditar});

  @override
  State<StatefulWidget> createState() {
    return RegistroDeCarroState();
  }
}

class RegistroDeCarroState extends State<RegistroDeCarro> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _placa = TextEditingController();
  final TextEditingController _cor = TextEditingController();
  final TextEditingController _marca = TextEditingController();
  dynamic assentosSelecionados;

  _cadastrar() {
    if (_formKey.currentState!.validate()) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Text(widget.criarEditar == 0 ? "Cadastrar Carro ": "Editar Carro",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 30,
                      )),
                ),
                SizedBox(
                  width: 450,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Registre a marca do seu carro";
                        }
                        return null;
                      },
                      controller: _marca,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Digite a marca do seu carro"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 450,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: _placa,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Registre a placa do seu carro";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Digite a placa do seu carro"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 450,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: _cor,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Registre a cor do seu carro";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Digite a cor do seu carro"),
                    ),
                  ),
                ),
                Container(
                  width: 420,
                  margin: const EdgeInsets.all(10),
                  child: DropdownButtonFormField<dynamic>(
                      value: numeroDeAssentos.first,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      validator: (value) {
                        if (value.toString() == "Selecione") {
                          return "Selecione um valor válido";
                        }
                        return null;
                      },
                      style: const TextStyle(color: Colors.deepPurple),
                      onChanged: (dynamic n) {
                        setState(() {
                          assentosSelecionados = n!;
                        });
                      },
                      items: numeroDeAssentos
                          .map<DropdownMenuItem<dynamic>>((dynamic n) {
                        return DropdownMenuItem<dynamic>(
                            value: n, child: Text(n.toString()));
                      }).toList()),
                ),
                SizedBox(
                  width: 400,
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        _cadastrar();
                        setState(() {});
                      },
                      child: widget.criarEditar == 0
                          ? const Text('Cadastrar Carro')
                          : const Text('Editar Carro'),
                    ),
                  ),
                )
              ],
            )));
  }
}
