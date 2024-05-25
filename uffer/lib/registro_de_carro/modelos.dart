class Carro {
  final String placa;
  final String cor;
  final String modelo;
  final int assentos;
  final int motoristaId;

  Carro(this.placa, this.cor, this.modelo, this.motoristaId, this.assentos);

  Map<String, dynamic> toMap() {
    return {
      'placa': placa,
      'cor': cor,
      'modelo': modelo,
      'assentos' : assentos,
      'motoristaId': motoristaId
    };
  }
}