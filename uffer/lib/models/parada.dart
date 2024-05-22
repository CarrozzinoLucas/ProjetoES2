class Parada {
  List<int> posicao;
  int localId;
  int trajetoId;

  Parada(this.posicao, this.localId, this.trajetoId);

  Map<String, dynamic> toJson() {
    return {
      "posicao": posicao,
      "localId": localId,
      "trajetoId": trajetoId,
    };
  }
}
