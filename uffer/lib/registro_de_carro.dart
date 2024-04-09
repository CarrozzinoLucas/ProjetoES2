import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum numeroDeAssentos {
  selecione("Selecione o número de assentos", -1),
  um('1', 1),
  dois('2', 2),
  tres('3', 3);

  final int val;
  final String elemento;

  const numeroDeAssentos(this.elemento, this.val);
}

class RegistroDeCarro extends StatefulWidget {
  const RegistroDeCarro({super.key});

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
  int? assentosSelecionados;

  _cadastrar() {

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
                  margin: EdgeInsets.all(20),
                  child: const Text(
                    "Troca de Carros",
                  ),
                ),
                SizedBox(
                  width: 450,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
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
                    child: TextField(
                      controller: _placa,
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
                    child: TextField(
                      controller: _cor,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Digite a cor do seu carro"),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: DropdownMenu<numeroDeAssentos>(
                      initialSelection: numeroDeAssentos.selecione,
                      requestFocusOnTap: true,
                      width: 430,
                      onSelected: (numeroDeAssentos? n ){
                        setState(() {
                          assentosSelecionados = n?.val;
                        });
                      },
                      dropdownMenuEntries: numeroDeAssentos.values
                          .map<DropdownMenuEntry<numeroDeAssentos>>(
                              (numeroDeAssentos n) {
                        return DropdownMenuEntry(value: n, label: n.elemento);
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
                      child: const Text('Cadastrar Carro'),
                    ),
                  ),
                )
              ],
            )));
  }
}
