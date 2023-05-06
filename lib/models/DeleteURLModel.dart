class DeleteURLModel {
  String? dateExpired;
  String? dateSave;
  String? hash;
  String? id;
  String? idUser;
  String? url;
  String? user;

  DeleteURLModel(
      {this.dateExpired,
      this.dateSave,
      this.hash,
      this.id,
      this.idUser,
      this.url,
      this.user});

  DeleteURLModel.fromJson(Map<String, dynamic> json) {
    dateExpired = json['dateExpired'];
    dateSave = json['dateSave'];
    hash = json['hash'];
    id = json['id'];
    idUser = json['idUser'];
    url = json['url'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dateExpired'] = this.dateExpired;
    data['dateSave'] = this.dateSave;
    data['hash'] = this.hash;
    data['id'] = this.id;
    data['idUser'] = this.idUser;
    data['url'] = this.url;
    data['user'] = this.user;
    return data;
  }
}
