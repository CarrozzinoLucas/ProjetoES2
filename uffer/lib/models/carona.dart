class Carona {
  DateTime dataHoraChegada;
  DateTime dataHoraSaida;
  int assentosDisponiveis;
  bool emAberto;
  bool retorno;
  bool apenasSoliciticao;
  String detalhesAdicionais;
  int passageiroId;
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
      this.passageiroId,
      this.motoristaId,
      this.trajetoId);
}
