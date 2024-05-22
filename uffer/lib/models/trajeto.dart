class Trajeto {
  final int origemId;
  final int destinoId;

  Trajeto(this.origemId, this.destinoId);

  Map<String, dynamic> toJson() {
    return {
      "origemId": origemId,
      "destinoId": destinoId,
    };
  }

  factory Trajeto.fromJson(json) => Trajeto(json["origemId"], json["destinoId"]);
}
