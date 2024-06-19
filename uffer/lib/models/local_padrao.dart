class LocalPadrao {
  int localId;
  String nome;

  LocalPadrao(this.localId, this.nome);

  Map<String, dynamic> toJson() => {"localId": localId, "nome": nome};

  factory LocalPadrao.fromJson(json){
    return LocalPadrao(
        json["localId"],
        json["nome"],
    );
  }
}