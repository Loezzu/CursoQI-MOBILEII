import 'package:flutter/widgets.dart';

class Receita {
  String? foto;
  String? nome;
  int? preparo;
  int? rendimento;
  double? favoritos;
  int? comentarios;
  String? ingredienteMassa;
  String? ingredienteRecheio;
  String? ingredienteCobertura;
  String? modoDePreparoMassa;
  String? modoDePreparoRecheio;
  String? modoDePreparoCobertura;

  Receita({
    this.foto,
    this.nome,
    this.preparo,
    this.rendimento,
    this.favoritos,
    this.comentarios,
    this.ingredienteMassa,
    this.ingredienteRecheio,
    this.ingredienteCobertura,
    this.modoDePreparoMassa,
    this.modoDePreparoRecheio,
    this.modoDePreparoCobertura,
  });
}
