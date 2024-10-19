import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class appBarPrincipal extends StatefulWidget {
  const appBarPrincipal({super.key});

  @override
  State<appBarPrincipal> createState() => _appBarPrincipalState();
}

class _appBarPrincipalState extends State<appBarPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Column(          
          children: [
            Row(              
              children: [
                Container(
                  color: const Color.fromARGB(255, 52, 72, 84),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/images/info.png'), width: 22,),
                      SizedBox(width: 7,),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Text('chiusura per ferie', style: GoogleFonts.lato(color: Colors.white, fontSize: 15, fontWeight: FontWeight.normal),),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                ),
                
              ],
            ),

            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //Icon(Icons.menu, size: 28, weight: 100,),
                        
                        SizedBox(width: 3,),
                        Image(image: AssetImage('assets/images/logo_intension.png'), width: 50,),
                        
                      ],
                    ),
                    width: MediaQuery.of(context).size.width/2 - 16,
                  
                  ),
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                       
                        
                         Image(image: AssetImage('assets/images/search.png'), height: 23,), 
                         SizedBox(width: 20,),
                         Image(image: AssetImage('assets/images/user.png'), height: 23,), 
                         SizedBox(width: 20,),
                         Badge(child: Image(image: AssetImage('assets/images/bell.png'), height: 23,),
                         backgroundColor: Colors.red,
                         textColor: Colors.white,
                        label: Text('1'),
                         ), 
                      ],
                    ),
                    width: MediaQuery.of(context).size.width/2 - 16,
                   
                  ),
                   
                ],

              ),
            ),
             Divider(
                    height: 0.3,
                    color: Color.fromARGB(255, 203, 203, 203),
                    endIndent: 1,
                  ),
                  Container(                
                    color: Color.fromARGB(255, 242, 242, 242),
                    alignment: Alignment.center,
                    child: SingleChildScrollView( 
                                         
                      scrollDirection: Axis.horizontal,
                      child: Expanded(
                        child: Container(
                                                
                           color: Color.fromARGB(255, 242, 242, 242),
                          padding: EdgeInsets.only(left: 8),
                          height: 45,                      
                       
                            child: FittedBox(
                              fit:  BoxFit.fill,
                              child: Row(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                              
                                     Container(                             
                                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 18, right: 18),
                                      height: 45,                              
                                     /* decoration: BoxDecoration(                                
                                        borderRadius: BorderRadius.all(Radius.circular(20)),      
                                        color: const Color.fromARGB(255, 52, 72, 84)                          
                                      ),*/
                                      child: Image(image: AssetImage('assets/images/home.png'), width: 20,)
                                      ),
                                      SizedBox(width: 9,),
                              
                                     Container(                             
                                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 18, right: 18),
                                      height: 45,                              
                                     /* decoration: BoxDecoration(                                
                                        borderRadius: BorderRadius.all(Radius.circular(20)),      
                                        color: const Color.fromARGB(255, 52, 72, 84)                          
                                      ),*/
                                      child: GestureDetector(onTap: () {
                                         Navigator.pushNamed(context, '/menu');
                                      }, child: Text('Menù', style: GoogleFonts.roboto(fontSize: 16, color: const Color.fromARGB(255, 42, 42, 42)),)),
                                      ),
                              
                                      SizedBox(width: 9,),
                                      Container(
                                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 18, right: 18),
                                      height: 45,                              
                                     /*decoration: BoxDecoration(                                
                                        borderRadius: BorderRadius.all(Radius.circular(20)),      
                                        color: const Color.fromARGB(255, 52, 72, 84)                          
                                      ),*/
                                      child: Text('Calendario', style: GoogleFonts.roboto(fontSize: 16, color: Color.fromARGB(255, 42, 42, 42)),),
                                      ),
                                      SizedBox(width: 9,),
                                      Container(
                                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 18, right: 18),
                                      height: 45,                              
                                     /* decoration: BoxDecoration(                                
                                        borderRadius: BorderRadius.all(Radius.circular(20)),      
                                        color: const Color.fromARGB(255, 52, 72, 84)                          
                                      ),*/
                                      child: Text('Notifiche', style: GoogleFonts.roboto(fontSize: 16, color: const Color.fromARGB(255, 42, 42, 42)),),
                                      ),
                                       SizedBox(width: 9,),
                                      Container(
                                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 18, right: 18),
                                      height: 45,                              
                                      /*decoration: BoxDecoration(                                
                                        borderRadius: BorderRadius.all(Radius.circular(20)),      
                                        color: const Color.fromARGB(255, 52, 72, 84)                          
                                      ),*/
                                      child: Text('Contatti', style: GoogleFonts.roboto(fontSize: 16, color: const Color.fromARGB(255, 42, 42, 42)),),
                                      ),
                                      
                                    ],
                                  ),
                                 
                                ],
                              ),
                            ),
                          ),
                        ),
                      
                     ),
                  ),
                    Divider(
                    height: 0.3,
                    color: Color.fromARGB(255, 203, 203, 203),
                    endIndent: 1,
                  ),
            
          ],
        );
  }


   

}