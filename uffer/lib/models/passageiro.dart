class Passageiro {
  int caronaId;
  int passageiroId;

  Passageiro(this.caronaId, this.passageiroId);

  Map<String, dynamic> toJson(){
    return {
    "caronaId": caronaId,
    "passageiroId": passageiroId,
    };
  }

}
