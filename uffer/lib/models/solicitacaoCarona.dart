class SolicitacaoCarona {
  int trajetoId;
  int usuarioId;
  int quandtidadeDePassageiros;
  bool emAberto;

  SolicitacaoCarona(this.trajetoId, this.usuarioId,
      this.quandtidadeDePassageiros, this.emAberto);

  Map<String, dynamic> toJson() {
    return {
      "trajetoId": trajetoId,
      "usuarioId": usuarioId,
      "quandtidadeDePassageiros": quandtidadeDePassageiros,
      "emAberto": emAberto,
    };
  }

  factory SolicitacaoCarona.fromJson(json){
    return SolicitacaoCarona(
        json["trajetoId"],
        json["usuarioId"],
        json["quandtidadeDePassageiros"],
        json["emAberto"]
    );
  }
}
