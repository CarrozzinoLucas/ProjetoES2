class SolocitacaoCarona {
  int trajetoId;
  int usuarioId;
  int quandtidadeDePassageiros;
  bool emAberto;

  SolocitacaoCarona(this.trajetoId, this.usuarioId,
      this.quandtidadeDePassageiros, this.emAberto);

  Map<String, dynamic> toJson() {
    return {
      "trajetoId": trajetoId,
      "usuarioId": usuarioId,
      "quandtidadeDePassageiros": quandtidadeDePassageiros,
      "emAberto": emAberto,
    };
  }
}
