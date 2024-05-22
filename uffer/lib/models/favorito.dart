class Favorito {
  String nome;
  int localId;
  int usuarioId;

  Favorito(this.nome, this.localId, this.usuarioId);

  Map<String, dynamic> toJson() {
    return {
      "nome": nome,
      "localId": localId,
      "usuarioId": usuarioId,
    };
  }
}
