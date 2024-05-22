class Motorista {
  final String cnh;
  final int usuarioId;

  Motorista(this.cnh, this.usuarioId);

  Map<String, dynamic> toJson() => {"cnh": cnh, "usuarioId": usuarioId};

  factory Motorista.fromJson(json) => Motorista(json["cnh"], json["usuarioId"]);
}
