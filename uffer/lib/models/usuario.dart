class Usuario {
  String nome;
  String email;
  String foto;

  Usuario(this.nome, this.email, this.foto);

  Map<String, dynamic> toJson() => {"nome": nome, "email": email, "foto": foto};

}
