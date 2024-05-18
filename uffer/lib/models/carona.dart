class Carona {
  DateTime dataHoraChegada;
  DateTime dataHoraSaida;
  int assentosDisponiveis;
  bool emAberto;
  bool retorno;
  bool apenasSoliciticao;
  String detalhesAdicionais;
  int motoristaId;
  int trajetoId;

  Carona(
      this.dataHoraChegada,
      this.dataHoraSaida,
      this.assentosDisponiveis,
      this.emAberto,
      this.retorno,
      this.apenasSoliciticao,
      this.detalhesAdicionais,
      this.motoristaId,
      this.trajetoId);
}
