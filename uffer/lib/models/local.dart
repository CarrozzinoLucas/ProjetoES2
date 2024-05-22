class Local {
  List<int> coordenadas;
  int favoritoId;
  int paradaId;
  int localPadraoId;

  Local(this.coordenadas, this.favoritoId, this.paradaId, this.localPadraoId);

  Map<String, dynamic> toJson() {
    return {
      "coordenadas": coordenadas,
      "favoritoId": favoritoId,
      "paradaId": paradaId,
      "localPadraoId": localPadraoId,
    };
  }

  factory Local.fromJson(json) {
    return Local(
      json["coordenadas"],
      json["favoritoId"],
      json["paradaId"],
      json["localPadraoId"]
    );
  }
}
