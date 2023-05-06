import 'dart:convert';
import 'package:tugas1_login/repository/api.dart';
import 'package:tugas1_login/models/CreateClient_model.dart';
import 'package:tugas1_login/models/DeleteClient_model.dart';
import 'package:tugas1_login/models/EditClient_model.dart';

class ClientController {
  /// instancia da classe do DIO
  final api = API();

  /// metodo que busca as informações
  Future<String?> AbacatesDancantes() async {
    var info = {
      "email": "${email}"
      "nome" : "${name}"
    }
    try {
      /// metodo get da requisição
      final response = await api.get(
          "http://ec2-44-211-218-227.compute-1.amazonaws.com:8080/api/cliente/create");

      /// validação de resosta correta
      if (response?.statusCode == 200) {
        return AbacatesDancantes.fromJson(json.decode(json.encode(response?.data)));
      } else {
        return null;
      }
    } catch (e, s) {
      print(e);
      print(s);
      throw (e);
    }
  }

  Future<List<ListPersonModel>> getListPerson() async {
    try {
      /// metodo get da requisição
      final response = await api.get(
          "https://630fa24936e6a2a04edec22f.mockapi.io/api/integridade/getList");

      /// validação de resosta correta
      if (response?.statusCode == 200) {
        return (json.decode(json.encode(response?.data)) as List)
            .map((jsonElement) => ListPersonModel.fromJson(jsonElement))
            .toList();
      } else {
        return [];
      }
    } catch (e, s) {
      print(e);
      print(s);
      throw (e);
    }
  }
}