import 'dart:convert';

class PessoaEntity {
  int? codigo;
  String? nome;
  PessoaEntity({
    this.codigo,
    this.nome,
  });

  Map<String, dynamic> toMap() {
    return {
      'codigo': codigo,
      'nome': nome,
    };
  }

  factory PessoaEntity.fromMap(Map<String, dynamic> map) {
    return PessoaEntity(
      codigo: map['codigo']?.toInt(),
      nome: map['nome'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PessoaEntity.fromJson(String source) => PessoaEntity.fromMap(json.decode(source));
}
