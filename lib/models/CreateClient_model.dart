class AbacatesDancantes {
  String? email;
  String? nome;
  String? senha;

  AbacatesDancantes({this.email, this.nome, this.senha});

  AbacatesDancantes.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    nome = json['nome'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['nome'] = this.nome;
    data['senha'] = this.senha;
    return data;
  }
}
