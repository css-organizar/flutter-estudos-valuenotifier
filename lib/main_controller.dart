import 'package:flutter/material.dart';
import 'package:flutter_estudos_valuenotifier/pessoa_entity.dart';

class MainController {
  ValueNotifier<PessoaEntity> pessoa = ValueNotifier(PessoaEntity());
  setNomePessoa(String value) {
    pessoa.value.nome = value;
    pessoa.notifyListeners();
  }
}
