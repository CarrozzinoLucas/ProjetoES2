class Veiculo {
  String placa;
  String cor;
  String modelo;
  DateTime ano;
  String marca;
  int motoristaId;

  Veiculo(this.placa, this.cor, this.modelo, this.ano, this.marca,
      this.motoristaId);

  Map<String, dynamic> toJson() {
    return {
      "placa": placa,
      "cor": cor,
      "modelo": modelo,
      "ano": ano,
      "marca": marca,
      "motoristaId": motoristaId
    };
  }

  factory Veiculo.fromJson(json){
    return Veiculo(
        json["placa"],
        json["cor"],
        json["modelo"],
        json["ano"],
        json["marca"],
        json["motoristaId"]
    );
  }
}
