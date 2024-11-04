import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:npsite/widgets/appBarPrincipal.dart';

class dashboard extends StatefulWidget {
  static const String path ='/dashboard';
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  appBarPrincipal abp = appBarPrincipal();

  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      

      appBar: AppBar(
        toolbarHeight: 162,
        toolbarOpacity: 0,
      flexibleSpace: Column(
          children: [
            appBarPrincipal(),
        //   Text('hallo')
          ],
        ),
        automaticallyImplyLeading: false,  
       
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),


      body: SingleChildScrollView(
        

       child: Padding(
         padding: const EdgeInsets.all(0.0),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text('Home', style: GoogleFonts.openSans(fontSize: 18, color: const Color.fromARGB(255, 57, 57, 57)),),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text("Un'avventura lunga sedici anni tra passione e sfide. ", style: GoogleFonts.openSans(fontSize: 31, color: Color.fromARGB(255, 57, 57, 57), fontWeight: FontWeight.w600, height: 1.3),),
            ),
             SizedBox(height: 11,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text('La curiosità e la voglia di affrontare e superare le molte sfide che di giorno in giorno si palesano, sono la benzina che ha alimentato ogni mia azione,'
              ' la pizza è un alimento semplice ma allo stesso tempo complesso, necessita di molte conoscenze e di lunghe lavorazioni, una buona pizza nasce dal momento in cui'
              " l'acqua incontra la farina e si conclude con il calore del forno è proprio qui che avviene la magia finale ..."
              ' '
              , style: GoogleFonts.openSans(fontSize: 16, color: Color.fromARGB(255, 57, 57, 57), fontWeight: FontWeight.w400),),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  
                },
                 style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue)),
                 child: Text('scopri di più', style: GoogleFonts.openSans(fontSize: 14, color: Colors.white),)),
              ],
            ),
            SizedBox(height: 35,),
             Divider(
                    height: 0.1,
                    color: Color.fromARGB(255, 203, 203, 203),
                    //endIndent: 50,
                   // indent: 50,
                  ),   
                  SizedBox(height: 35,),                     
           /* Container(
              width: MediaQuery.of(context).size.width,
              //padding: EdgeInsets.all(10),              
              child: Image(image: AssetImage('assets/images/desk_social.png'), fit: BoxFit.fill,)),*/

              Padding(padding: EdgeInsets.only(left: 20, right: 20),
            child: Text('Dove seguirci per rimanere aggiornato', style: GoogleFonts.openSans(fontSize: 31, color: Color.fromARGB(255, 57, 57, 57), fontWeight: FontWeight.w600, height: 1.3),),
              ),
               SizedBox(height: 11,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text('Per seguirci, affidati ai nostri canali ufficiali, non affidarti a portali terzi che molte volte non sono aggiornati ed aggiornabili,'
              ' che presentano listini e proposte deprecate. '
              " Siamo presenti in Google, Instagram e Facebook, quindi per documentarti utilizza questi social o questa app, che tramite la funzione di update sarà sempre aggiornata."
              ' '
              , style: GoogleFonts.openSans(fontSize: 16, color: Color.fromARGB(255, 57, 57, 57), fontWeight: FontWeight.w400),),
            ),
            SizedBox(height: 28,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Image(image: AssetImage('assets/images/facebook.png'), width: 39,),
                 SizedBox(width: 12,),
                 Image(image: AssetImage('assets/images/instagram.png'), width: 39,),
                 SizedBox(width: 12,),
                 Image(image: AssetImage('assets/images/google.png'), width: 39,),
              ],
            ),
            SizedBox(height: 40,),

          

          
          ],
         ),
       ),
       
      ),

    );
  }
}