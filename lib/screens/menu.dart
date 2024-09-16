import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:npsite/models/menu.dart';
import 'package:npsite/models/repo.dart';
import 'package:npsite/widgets/appBarPrincipal.dart';
import 'package:scrollable_reorderable_navbar/scrollable_reorderable_navbar.dart';
import 'package:super_tooltip/super_tooltip.dart';

class menu extends StatefulWidget {
  static const String path ='/menu';

  

  menu({super.key});

  List<NavBarItem> _itemsCategorie = const [
      NavBarItem(widget: Text('Classiche'), name: "classiche"),
      NavBarItem(widget: Text('Speciali'), name: "speciali"),
      NavBarItem(widget: Text('Base verdure'), name: "base verdure"),
      NavBarItem(widget: Text('calzoni'), name: "calzoni"),
      NavBarItem(widget: Text('Pesce'), name: "pesce"),
      NavBarItem(widget: Text('Novità'), name: "novita"),
      NavBarItem(widget: Text('Pizze a metro'), name: "metro"),
      NavBarItem(widget: Text('Aggiunte'), name: "aggiunte")
  ];

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {

  repo rep = repo();
  late List<ListaPizze> rp;
  List<ListaPizze> tempList = [];
  bool scrollVis=true;
  List<String> letter = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];  
  List<String> categorie = ['Completa','Classiche','Speciali','Con verdure', 'Con pesce', 'Calzoni', 'Novità','Pizze a metro', 'Aggiunte','Filtra per categorie'];
  String labelCategoria = "Completa";
  String textCircle = 'CM';
  List<String> letterAppeared = [];
  final ScrollController _scrollController = ScrollController();
 
  Map<String, GlobalKey> lstKey={};
  int selectionCategory = 0;

 

  final _controller = SuperTooltipController();
  List<String> data = ['text 1', 'text 2', 'text 3'];


void initState() {
    super.initState();

  rp = getRepo();
  tempList.addAll(rp);
   /* rp = rep.getRepoPizze.lstPizze;

    rp.sort((a, b) => a.nome!.compareTo(b.nome!),);
    
    rp.forEach((element) {
        if(!letterAppeared.contains(element.nome!.substring(0,1)!.toLowerCase())) {
          letterAppeared.add(element.nome!.substring(0,1)!.toLowerCase());
          lstKey.addEntries({element.nome!: GlobalKey()}.entries);  
       }
    });*/

    print(lstKey);

    WidgetsBinding.instance
        .addPostFrameCallback((_) {
          print('after build');      
           _controller.showTooltip();  
          Future.delayed(Duration(seconds: 10), () {
            _controller.hideTooltip();  
          },);    
          
        });
  }


  List<ListaPizze> getRepo() {
     rp = rep.getRepoPizze.lstPizze;

    rp.sort((a, b) => a.nome!.compareTo(b.nome!),);
    
    rp.forEach((element) {
        if(!letterAppeared.contains(element.nome!.substring(0,1)!.toLowerCase())) {
          letterAppeared.add(element.nome!.substring(0,1)!.toLowerCase());
          lstKey.addEntries({element.nome!: GlobalKey()}.entries);  
       }
    });
    return rp;
  }


  void setLetterAppeared(List<ListaPizze> lst) {
    lst.sort((a, b) => a.nome!.compareTo(b.nome!),);
    
    lst.forEach((element) {
        if(!letterAppeared.contains(element.nome!.substring(0,1)!.toLowerCase())) {
          letterAppeared.add(element.nome!.substring(0,1)!.toLowerCase());
          lstKey.addEntries({element.nome!: GlobalKey()}.entries);  
       }
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      floatingActionButton: Visibility(
        visible: scrollVis,
        child: FloatingActionButton(onPressed: () {
        /*  setState(() {
              scrollVis=false;
          });*/

          
          Scrollable.ensureVisible(lstKey[ lstKey.keys.first]!.currentContext!,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeOut);
        
        },
        mini: true,
        backgroundColor: Colors.blue[100],
        child: Image(image: AssetImage('assets/images/scroll_up.png'), height: 37, color: Color.fromARGB(255, 0, 0, 0),),
        ),
      ),

      bottomNavigationBar: SingleChildScrollView(scrollDirection: Axis.horizontal, child: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Color.fromARGB(95, 0, 0, 0), width: 0.2)),
          color: Colors.white
        ),
        height: 70,
       // color: Color.fromARGB(255, 255, 255, 255),
        padding: EdgeInsets.all(0.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [ 
              
                
              SuperTooltip(child: Container(width: 2,), content: Text('per vedere tutte le categorie, scorrere da destra a sinsitra', softWrap: true, 
              style: GoogleFonts.openSans(fontSize: 13, color: Color.fromARGB(255, 210, 210, 210),),
              ),
              backgroundColor: const Color.fromARGB(255, 38, 38, 38),
              controller: _controller,
                  popupDirection: TooltipDirection.up,
              ), 

              GestureDetector(
                onTap: () {
                    setState(() {
                      selectionCategory = 9;
                      labelCategoria = categorie[9]; 
                      //setListByCategory('ALL');
                      textCircle = 'FR';         
                      Navigator.pushNamed(context, '/filter');
                    });
                },                
                 child: Column(
                               children: [
                  Image(image: AssetImage('assets/images/mix.png'), height: 24, color:selectionCategory == 9? Colors.green:  Colors.black87,),
                  Text('Filtra per ingrdienti', style: GoogleFonts.openSans(fontSize: 12, color: selectionCategory == 9? Colors.green:  Colors.black87, fontWeight: FontWeight.bold),)
                               ],
                              ),
               ),
          
             SizedBox(width: 28,),  
               GestureDetector(
                onTap: () {
                    setState(() {
                      selectionCategory = 0;
                      labelCategoria = categorie[0]; 
                      setListByCategory('ALL');
                      textCircle = 'CM';                     
                    });
                },                
                 child: Column(
                               children: [
                  Image(image: AssetImage('assets/images/completa.png'), height: 24, color:selectionCategory == 0? Colors.green:  Colors.black87,),
                  Text('Completa', style: GoogleFonts.openSans(fontSize: 12, color: selectionCategory == 0? Colors.green:  Colors.black87, fontWeight: FontWeight.bold),)
                               ],
                              ),
               ),
          
             SizedBox(width: 28,),        
               GestureDetector(
                onTap: () {
                   setState(() {
                      selectionCategory = 1;
                      labelCategoria = categorie[1];  
                      setListByCategory('C');  
                      textCircle='C';                  
                    });
                },
                 child: Column(
                               children: [
                  Image(image: AssetImage('assets/images/c.png'), height: 24, color:selectionCategory ==1? Colors.green:  Colors.black87),
                  Text('Classiche', style: GoogleFonts.openSans(fontSize: 12, color:selectionCategory == 1? Colors.green:  Colors.black87, fontWeight: FontWeight.bold),)
                               ],
                              ),
               ),
             SizedBox(width: 28,),
             GestureDetector(
              onTap: () {
                setState(() {
                      selectionCategory = 2;
                      labelCategoria = categorie[2];  
                      setListByCategory('S');                    
                      textCircle ='S';
                    });
              },
               child: Column(
                children: [
                  Image(image: AssetImage('assets/images/s.png'), height: 24, color:selectionCategory ==2? Colors.green:  Colors.black87),
                  Text('Speciali', style: GoogleFonts.openSans(fontSize: 12, color:selectionCategory ==2? Colors.green:  Colors.black87, fontWeight: FontWeight.bold),)
                ],
               ),
             ),
              SizedBox(width: 28,),
             GestureDetector(
              onTap: () {
                 setState(() {
                      selectionCategory = 3;
                      labelCategoria = categorie[3];  
                      setListByCategory('V');                    
                      textCircle='V';
                    });
              },
               child: Column(
                children: [
                  Image(image: AssetImage('assets/images/melanzana.png'), height: 24, color:selectionCategory ==3? Colors.green:  Colors.black87),
                  Text('Con verdure', style: GoogleFonts.openSans(fontSize: 12, color:selectionCategory ==3? Colors.green:  Colors.black87),)
                ],
               ),
             ),
                SizedBox(width: 28,),
             GestureDetector(
              onTap: () {
                 setState(() {
                      selectionCategory = 4;
                      labelCategoria = categorie[4];  
                      setListByCategory('P');                    
                      textCircle ='P';
                    });
              },
               child: Column(
                children: [
                  Image(image: AssetImage('assets/images/octopus.png'), height: 24, color:selectionCategory ==4? Colors.green:  Colors.black87),
                  Text('Con pesce', style: GoogleFonts.openSans(fontSize: 12, color:selectionCategory ==4? Colors.green:  Colors.black87, fontWeight: FontWeight.bold),)
                ],
               ),
             ),
              SizedBox(width: 28,),
             GestureDetector(
              onTap: () {
                  setState(() {
                      selectionCategory = 5;
                      labelCategoria = categorie[5];  
                      setListByCategory('CL');                    
                      textCircle ='CL';
                    });
              },
               child: Column(
                children: [
                  Image(image: AssetImage('assets/images/calzone.png'), height: 24, color:selectionCategory ==5? Colors.green:  Colors.black87),
                  Text('Calzoni', style: GoogleFonts.openSans(fontSize: 12, color:selectionCategory ==5? Colors.green:  Colors.black87, fontWeight: FontWeight.bold),)
                ],
               ),
             ),
              SizedBox(width: 28,),
             Column(
              children: [
                Image(image: AssetImage('assets/images/new.png'), height: 24,),
                Text('Novità', style: GoogleFonts.openSans(fontSize: 12, color: Colors.black87, fontWeight: FontWeight.bold),)
              ],
             ),
               SizedBox(width: 28,),
              Column(
              children: [
                Image(image: AssetImage('assets/images/metro.png'), height: 24,),
                Text('Pizza a metro', style: GoogleFonts.openSans(fontSize: 12, color: Colors.black87, fontWeight: FontWeight.bold),)
              ],
             ),
             SizedBox(width: 28,),
              Column(
              children: [
                Image(image: AssetImage('assets/images/add.png'), height: 24,),
                Text('Aggiunte', style: GoogleFonts.openSans(fontSize: 12, color: Colors.black87, fontWeight: FontWeight.bold),)
              ],
             ),
          
            ],
          ),
        ),
      ),),
      appBar: AppBar(
        toolbarHeight: 162,
        toolbarOpacity: 0,
        flexibleSpace: appBarPrincipal(),
        
      ),
       backgroundColor: Color.fromARGB(255, 255, 255, 255),
       body: Row(
         children: [
           Container(
            width: MediaQuery.of(context).size.width - 30,
             child: SingleChildScrollView(
              controller: _scrollController,
             
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     // Container(                
                        Row(
                          children: [
                            Container(  
                     
                              width: 150,
                              child: Column(
                                textBaseline: TextBaseline.ideographic,
                                crossAxisAlignment: CrossAxisAlignment.start,                          
                                children: [
                                  Text('Menù', style: GoogleFonts.openSans(fontSize: 18, color: const Color.fromARGB(255, 57, 57, 57), fontWeight: FontWeight.bold),),
                                  Text('$labelCategoria', style:  GoogleFonts.openSans(fontSize: 14, color: const Color.fromARGB(255, 57, 57, 57),),),
                                ],
                              )),
             
                              Container(  
                                 
                                width: MediaQuery.of(context).size.width-200,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CircleAvatar(backgroundColor: Colors. blue, child: Text(textCircle, style: GoogleFonts.openSans(fontSize: 18, color: Colors.white),),),
                                  ],
                                )),
                                
                          ],
                        ),
             
                      
                     
                            
                     // ),
                 
                     
                     Padding(
                       padding: const EdgeInsets.only(top: 10),
                       child: Container(
                         decoration: BoxDecoration(
               // border: Border(top: BorderSide(color: Color.fromARGB(220, 0, 0, 0), width: 0.2,)),
                color: Colors.white
              ),
                         child: Column(                          
                           children: rp.map((e) => Column(                           
                             children: [
                               ListTile(
                                key: lstKey.containsKey(e.nome!)? lstKey[e.nome]: null,
                                 titleAlignment: ListTileTitleAlignment.top,
                                  minVerticalPadding: 10.0,
                                title: Text('${e.nome}', style: GoogleFonts.roboto(fontSize: 15, color: Colors.black87),),
                                subtitle: e.nome == 'deliziosa'? Text('pomodoro'):  Text('${rep.lstStrIngredientiByPizza(e.nome!)}', style: GoogleFonts.roboto(fontSize: 12, color: Colors.black54),),
                               /* trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [                        
                                    Image(image: AssetImage('assets/images/heart.png'), height: 24, color: e.prezzo! < 7.00? const Color.fromARGB(255, 30, 30, 30) : Color.fromARGB(255, 173, 173, 173),),
                                    Text('53')
                                  ],
                                ),*/
                                leading: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        repo rep = repo();
                                        print('${rep.lstStrIngredientiByPizza(e.nome!)}');
                                        
                                        print('lista ingerdienti: ${e.listaIngredienti}');
                                      },
                                      child: Text('€ ${e.prezzo!.toStringAsFixed(2)}', style: GoogleFonts.roboto(fontSize: 15, color: Colors.blue,),)),
                                  ],
                                ),
                               
                                
                               
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('77', style: GoogleFonts.openSans(fontSize: 12, color: Colors.black38),),
                                    SizedBox(width: 7,),
                                    Image(image: AssetImage('assets/images/heart.png'), height: 17, color: e.prezzo! < 7.00? const Color.fromARGB(255, 30, 30, 30) : Color.fromARGB(255, 173, 173, 173),), 
                                    SizedBox(width: 18,),                            
                                    Text('152', style: GoogleFonts.openSans(fontSize: 12, color: Colors.black38),),
                                    SizedBox(width: 7,),
                                    Image(image: AssetImage('assets/images/click.png'), height: 17, color: e.prezzo! < 7.00? const Color.fromARGB(255, 30, 30, 30) : Color.fromARGB(255, 173, 173, 173),),
                                     SizedBox(width: 18,),
                                    Image(image: AssetImage('assets/images/info_prod.png'), height: 17, color: e.prezzo! < 7.00? const Color.fromARGB(255, 30, 30, 30) : Color.fromARGB(255, 173, 173, 173),),
                                  ],
                                ),
                                SizedBox(height: 7,),
                                 Divider(height: 0.1, color: Color.fromARGB(95, 188, 188, 188),)
                             ],
                           )                            
                            
                            ).toList(),
                         ),
                       ),
                     )
                      
                      
                    ],
                  ),
                ),
              ),
             
             ),
           ),

           Container(width: 30,
           child: SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                   letter.map((e) => 
                   
                   GestureDetector(
                    
                    onTap: () {
                    lstKey.forEach((key, value) {
                     // print('$key - $e');
                      if(key.substring(0,1)== e.toLowerCase()) {
                         Scrollable.ensureVisible(lstKey[key]!.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeOut);
                      }
                    });
                    },
                    child: Text('$e', style: GoogleFonts.openSans(fontSize: 13, color: Colors.black87),))).toList(),
                
             ),
           ),)
         ],
       ),
    ));
  }

  void setListByCategory(String category) {

  

   
     rp.clear();
     rp.addAll(tempList);
     letterAppeared.clear();
     lstKey.clear();
     print(lstKey);
     print(rp.length);
     

     
   
   if(category != 'ALL') {
    setState(() {      
      rp.removeWhere((element) => element.tipologia != category);
    
    });
   }

  setLetterAppeared(rp);
   if (_scrollController.hasClients) { 
            final position =_scrollController.initialScrollOffset;
            _scrollController.animateTo( 
              position, 
              duration: Duration(seconds: 2), 
              curve: Curves.easeOut, 
            ); 
          } 
     
    print(rp.length);
  }

}

 