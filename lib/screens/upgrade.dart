import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class upgrade extends StatefulWidget {
  static const String path = '/upgrade';
  const upgrade({super.key});

  @override
  State<upgrade> createState() => _upgradeState();
}

class _upgradeState extends State<upgrade> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Update', style: TextStyle(fontWeight: FontWeight.w600),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, color: Colors.blue[200],),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                
                Container(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  width: (MediaQuery.of(context).size.width - 100) - 12,
                //  height: 50,
                  child: Text('Update automatico', style: TextStyle(fontSize: 18),),
                  
                ),
                Container(
                  width: 100 - 12 ,
                //  height: 50,
                  child: Switch(value: true,
                  activeColor: Colors.blue[300],
                   onChanged: (value) {                    
                },                                    
                  ),
                ),

               


              ],),
               Column(
                 children: [
                  SizedBox(height: 2.00,),
                  Divider(
                    height: 0.5,
                    endIndent: 5,
                    indent: 5,

                  ),
                  SizedBox(height: 2.00,),
                   ListTile(                           
                      leading: 
                               CircleAvatar(
                                               
                                backgroundColor: Colors.blue,
                                child: Text('M', style: TextStyle(color: Colors.white, fontSize: 20),),
                              ),
                            
                        
                        
                    
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Aggiornamento 1.2024', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                          Text('17-07-2024', style: GoogleFonts.roboto(fontSize: 13.00, color: Colors.black38),)
                        ],
                      ),
                    
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,),
                      child: Text('Nuovo menù 2024, piccolo aggiornamento dei prezzi dovuto al continuo rincaro della materia prima e dei costi energetici.' 
                         ' Sono state inserite anche nuove pizze, manarola con pesto alla genovese e le pizze con il guanciale.'
                         ' Sono state tolte le ultime due pizze con la crema per fare spazio a due nuovi formaggi, il castelmagno,'
                         ' formaggio piemontese e le blue un formaggio francese molto saporito.', style: GoogleFonts.roboto(fontSize: 13.5) ,),
                    ),
                     SizedBox(height: 15,),
               Padding(
                 padding: const EdgeInsets.only(right: 12.00),
                 child: Row(                
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ElevatedButton(onPressed: () {
                      
                    }, child: Text('aggiorna'),
                     style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
                      foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                         RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.00),                        
                         )
                      )
                     ),
                    )
                  ],
                 ),
               )
                 ],
               ),
              
            ],
          ),
        ),

      ),

    );
  }
}