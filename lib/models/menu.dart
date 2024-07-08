class menu {
  List<ListaPizze>? listaPizze;

  menu({this.listaPizze});

  menu.fromJson(Map<String, dynamic> json) {
    if (json['listaPizze'] != null) {
      listaPizze = <ListaPizze>[];
      json['listaPizze'].forEach((v) {
        listaPizze!.add(new ListaPizze.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.listaPizze != null) {
      data['listaPizze'] = this.listaPizze!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}




class ListaPizze {
  String? nome;
  String? descrizione;
  double? prezzo;
  List<dynamic>? listaIngredienti;
  String? tipologia;

  ListaPizze({this.nome, this.descrizione, this.prezzo, this.listaIngredienti, this.tipologia});

  ListaPizze.fromJson(Map<String, dynamic> json) {
    this.listaIngredienti = [];
    nome = json['nome'];
    descrizione = json['descrizione'];
    tipologia = json['tipologia'];
    prezzo = json['prezzo'];
    if (json['listaIngredienti'] != null) {
       json['listaIngredienti'].forEach((v) {
          listaIngredienti!.add(v);
       });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['descrizione'] = this.descrizione;
    data['prezzo'] = this.prezzo;
    data['tipologia'] = this.tipologia;
    if (this.listaIngredienti != null) {
       data['listaIngredienti'] = this.listaIngredienti!.map((e) => e).toList();
    }
    return data;
  }
}

class repoPizze {
  List<ListaPizze>  lstPizze = [];

repoPizze({required this.lstPizze});

repoPizze.fromJson(Map<String, dynamic> json) {
   if(json['lstPizze'] != null) {
     json['lstPizze'].forEach((v) {
        lstPizze!.add(new ListaPizze.fromJson(v));
      });
   }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();    
  if (this.lstPizze != null) {
      data['lstPizze'] =
          this.lstPizze!.map((v) => v.toJson()).toList();
    }
    return data;
  }

}


class repoIngredienti {
  List<ListaIngredienti>  lstIngredienti = [];

repoIngredienti({required this.lstIngredienti});

repoIngredienti.fromJson(Map<String, dynamic> json) {
   if(json['lstIngredienti'] != null) {
     json['listaIngredienti'].forEach((v) {
        lstIngredienti!.add(new ListaIngredienti.fromJson(v));
      });
   }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();    
  if (this.lstIngredienti != null) {
      data['lstIngredienti'] =
          this.lstIngredienti!.map((v) => v.toJson()).toList();
    }
    return data;
  }

}



class ListaIngredienti {
  int? key;
  String? nome;
  String? descrizione;
  double? prezzo;
  String? tipologia;

  ListaIngredienti({this.key, this.nome, this.descrizione, this.prezzo, this.tipologia});

  ListaIngredienti.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    descrizione = json['descrizione'];
    prezzo = json['prezzo'];
    key = json['key'];
    tipologia = json['tipologia'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['descrizione'] = this.descrizione;
    data['prezzo'] = this.prezzo;
    data['key'] = this.key;
    data['tipologia'] = this.tipologia;
    return data;
  }
}