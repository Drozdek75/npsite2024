import 'dart:math';

import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

  List<TextStyle> txtStyle = List<TextStyle>.empty(growable: true);
  List<Widget> logicalOperation = [
    Text('AND'),
    Text('OR'),
    Text('NOT'),
  ];
  List<bool> selectLogicOp = [false, true, true];
  Map<String,int> globalK = {};
  Map<int, GlobalKey> globalK2 = {};
  List<String> letter = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];


   


  @override
  void initState() {
    // TODO: implement initState
    txtStyle.add(GoogleFonts.lato(fontSize: 19, color: Color.fromARGB(170, 22, 223, 109), fontWeight: FontWeight.bold));
    txtStyle.add(GoogleFonts.lato(fontSize: 25, color: Color.fromARGB(228, 49, 13, 178), fontWeight: FontWeight.normal));
    txtStyle.add(GoogleFonts.lato(fontSize: 30, color: Color.fromARGB(85, 204, 93, 8), fontWeight: FontWeight.w500));
    

    letter.forEach((letter) {
      widget.userList.forEach((element) {
        int? keyI = element.key;
         if(element.descrizione!.toUpperCase().startsWith(letter)) {
          if(!globalK.containsKey(letter)) {
            GlobalKey gk = GlobalKey();
            globalK.addEntries({letter: keyI as int}.entries);
            globalK2.addEntries({keyI as int: gk}.entries);
          }      
         }
      });
    });

  
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    Random ran = Random();
    return  Scaffold(
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: ButtonBar(
          
         
             alignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.arrow_back_ios, color: Colors.white,),
            Text('elementi selezionati ${widget.select.length}'),
            GestureDetector(child: Icon(Icons.arrow_forward_ios, color: Colors.white,), onTap: () {
              List<int?> lstSelectFinal = widget.userList.where((element) => widget.select.contains(element.descrizione)).map((element) => element.key).toList();                                    
              Navigator.pushNamed(context, '/menu', arguments: lstSelectFinal);
            },),
          ],
        ),
      ),
      
   /*   bottomNavigationBar: Container(
        decoration: BoxDecoration(border: Border(top: BorderSide(color: Color.fromARGB(255, 187, 187, 187), width: 0.4)), color: const Color.fromARGB(255, 234, 234, 234),),
        padding: EdgeInsets.only(top: 10, bottom: 10),
       
      ),*/
       /*
        child: Column(
          children: [
            Flexible(
              child: OverflowBar(
            //    alignment: MainAxisAlignment.spaceEvenly,
                
                children: <Widget>[
                   SizedBox(
                    height: 60,
                     child: Column(
                      children:[
                        Container(
                          height: 30,
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width/2 - 100,
                                child: Row(
                                  children: [
                                      Icon(Icons.arrow_back_ios),
                                     
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/2 + 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                      ToggleButtons(children: logicalOperation,
                                       isSelected: selectLogicOp,
                                       constraints: BoxConstraints(
                                        minHeight: 27,
                                        minWidth: 50
                                       ),
                                       
                                       direction: Axis.horizontal,
                                       selectedBorderColor: Colors.green,
                                       fillColor: const Color.fromARGB(0, 37, 37, 37),
                                       selectedColor: Colors.green,
                                       color: Colors.black54,
                                       borderColor: Colors.transparent,
                                       onPressed: (index) {
                                         
                                       },
                                        ),
                                      SizedBox(width: 25,),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            widget.select.clear();
                                          });
                                        },
                                        child: Icon(Icons.refresh)),
                                      SizedBox(width: 25,),
                                      GestureDetector(
                                        onTap: () {
                                         
                                         List<int?> lstSelectFinal = widget.userList.where((element) => widget.select.contains(element.descrizione)).map((element) => element.key).toList();
                                         print(lstSelectFinal);
                                         Navigator.pushNamed(context, '/menu', arguments: lstSelectFinal);
                                        
                                        },
                                        child: Icon(Icons.arrow_forward_ios)),
                                      
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          padding: EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                                           
                            children: [Text('${widget.select.length} elementi selezionati')],
                          ),
                        )
                      
                      ],
                       
                     ),
                   )
                      
                ],
              ),
            ),
          ],
        ),
      ),*/
       
        body:Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 30,
              child: SingleChildScrollView(          
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      
                        
                        SizedBox(height: 25,),
                      
                            Text('Seleziona gli ingrdienti da ricercare', style: GoogleFonts.openSans(fontSize: 30, color: Color.fromARGB(255, 32, 32, 32), fontWeight:FontWeight.bold), maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,),
                      
                        
                      
                      SizedBox(height: 25,),
                      Wrap(
                        spacing: 5.0,
                        runSpacing: 5.0,
                        children: widget.userList.map((e) {
              
                          print('descrizione ${e.descrizione}');
                        
                       
                          return Container(
                            key: globalK2.containsKey(e.key)? globalK2[e.key]: null,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(backgroundColor: widget.select.contains(e.descrizione)? Colors.green: Colors.white),
                              onPressed: () { 
                                setState(() {
                                   if(widget.select.contains(e.descrizione)) {
                                widget.select.remove(e.descrizione);
                               }
                               else {
                                widget.select.add(e.descrizione!);
                               }   
                                });                  
                               
                            }, child: Text('${e.descrizione}',style: TextStyle(color: widget.select.contains(e.descrizione)? Colors.white: Colors.black),)),
                          );
                        }).toList(),
                        
                      ),
                      SizedBox(height: 75,),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              width: 30,
              color: Colors.transparent,
              child: SingleChildScrollView(
                 scrollDirection: Axis.vertical,
             child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                   letter.map((e) => 
                   
                   GestureDetector(
                    
                    onTap: () {
                       
                          final widgetContext = globalK2[globalK[e]]!.currentContext;
                          print(widgetContext);
                          if(widgetContext  != null) {
                                   
                          Scrollable.ensureVisible(widgetContext!, 
                          duration: const Duration(milliseconds: 300));}
                    },
                    child: Text('$e', style: GoogleFonts.openSans(fontSize: 13, color: Colors.black87),))).toList(),
                
             ),

              ),
            )
          ],
        ));
    
  }
}