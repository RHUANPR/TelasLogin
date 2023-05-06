class MorangosFofinhos {
  String? dateRegister;
  String? email;
  String? id;
  String? nome;
  String? senha;
  String? token;

  MorangosFofinhos(
      {this.dateRegister,
      this.email,
      this.id,
      this.nome,
      this.senha,
      this.token});

  MorangosFofinhos.fromJson(Map<String, dynamic> json) {
    dateRegister = json['dateRegister'];
    email = json['email'];
    id = json['id'];
    nome = json['nome'];
    senha = json['senha'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dateRegister'] = this.dateRegister;
    data['email'] = this.email;
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['senha'] = this.senha;
    data['token'] = this.token;
    return data;
  }
}
