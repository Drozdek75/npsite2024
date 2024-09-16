import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';
import 'package:npsite/models/menu.dart';
import 'package:npsite/models/repo.dart';

class User {
  final String? name;
  final String? avatar;
  User({this.name, this.avatar});
}

class filter extends StatefulWidget {

  static const String path = '/filter';
  repo rep = repo();

  List<String> select = List<String>.empty(growable: true);

  List<ListaIngredienti> userList = [
 
];

   filter({super.key}) {
      rep.repos.lstIngredienti.forEach((element) {
        if(element.tipologia != 'ADD') {
        userList.add(element);    
        }
    });

    userList.sort((a, b) => a.descrizione!.toLowerCase().compareTo(b.descrizione!.toLowerCase()));

    
   }

  @override
  State<filter> createState() => _filterState();
}

class _filterState extends State<filter> {
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.transparent,
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: widget.userList.map((e) {
              return Container(
                child: FilterChip(
                  backgroundColor: Colors.blue,
                  selectedColor: Colors.green,
                  selected: widget.select.contains(e.descrizione),
                 label: Text(e.descrizione!),
                 onSelected: (bool sel) { 

                   setState(() {
                     if(sel) {
                        widget.select.add(e.descrizione!);
                     }
                     else {
                      widget.select.remove(e.descrizione!);
                     }

                   });

                  },)
              );
            }).toList(),
            
          ),
        ));
    
  }
}