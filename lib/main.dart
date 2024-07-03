import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:npsite/models/menu.dart';
import 'firebase_options.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

 void printLongString(String text) {
  final RegExp pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((RegExpMatch match) =>   print(match.group(0)));
}

  void _incrementCounter() async{
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
     // _counter++;
    
        try {
        ListaIngredienti mozzarella = ListaIngredienti(key: 1, nome: 'mozzarella', descrizione: 'fior di latte', prezzo: 1.00);
        ListaIngredienti pomodoro = ListaIngredienti(key: 2, nome: 'pomodoro', descrizione: 'pomodoro pelato', prezzo: 1.00);
        ListaIngredienti olio = ListaIngredienti(key: 3, nome: 'olio extra vergine di oliva', descrizione: 'olio EVO', prezzo: 0.50);
        ListaIngredienti rosmarino = ListaIngredienti(key: 4, nome: 'rosmarino', descrizione: 'rosmarino', prezzo: 0.00);
        ListaIngredienti origano = ListaIngredienti(key: 5, nome: 'origano', descrizione: 'origano', prezzo: 0.00);
        ListaIngredienti prosciutto = ListaIngredienti(key: 6, nome: 'prosciutto cotto', descrizione: 'prosciutto cotto', prezzo: 1.00);
        ListaIngredienti funghi = ListaIngredienti(key: 7, nome: 'funghi champignon', descrizione: 'funghi champignon', prezzo: 1.00);
        ListaIngredienti salamino = ListaIngredienti(key: 8, nome: 'salamino piccante', descrizione: 'salamino piccante levoni', prezzo: 1.00);
        ListaIngredienti gorgonzola = ListaIngredienti(key: 9, nome: 'gorgonzola piccante', descrizione: 'gorgonzola piccante bergader', prezzo: 1.00);
        ListaIngredienti speck = ListaIngredienti(key: 10, nome: 'speck', descrizione: 'speck morgante', prezzo: 1.80);
        ListaIngredienti bresaola = ListaIngredienti(key: 11, nome: 'bresaola punta d''anca', descrizione: 'bresaola punta d''anca rigamonti', prezzo: 1.80);
        ListaIngredienti acciughe = ListaIngredienti(key: 12, nome: 'acciughe', descrizione: 'acciughe', prezzo: 1.00);
        ListaIngredienti capperi = ListaIngredienti(key:13, nome: 'capperi', descrizione: 'capperi', prezzo: 1.00);
        ListaIngredienti olive = ListaIngredienti(key: 14, nome: 'olive taggiasche', descrizione: 'oliva di taggia', prezzo: 1.00);
        ListaIngredienti tonno = ListaIngredienti(key: 15, nome: 'tonno', descrizione: 'tonno pinna gialla', prezzo: 1.00);
        ListaIngredienti cipolla = ListaIngredienti(key: 16, nome: 'cipolla di tropea', descrizione: 'cipolla di tropea', prezzo: 1.00);
        ListaIngredienti emmental = ListaIngredienti(key: 17, nome: 'emmental', descrizione: 'emmental', prezzo: 1.00);
        ListaIngredienti montasio = ListaIngredienti(key: 18, nome: 'montasio', descrizione: 'montasio', prezzo: 1.00);
        ListaIngredienti latteria = ListaIngredienti(key: 19, nome: 'latteria', descrizione: 'formaggio latteria', prezzo: 1.00);
        ListaIngredienti chiodini = ListaIngredienti(key: 20, nome: 'funghi chiodini', descrizione: 'funghi chiodini', prezzo: 1.00);
        ListaIngredienti crudo = ListaIngredienti(key: 21, nome: 'crudo di parma', descrizione: 'crudo di parma Levoni', prezzo: 1.80);
        ListaIngredienti porchetta = ListaIngredienti(key: 22, nome: 'porchetta trevigiana', descrizione: 'porchetta trevigiana', prezzo: 1.80);
        ListaIngredienti wurstel = ListaIngredienti(key: 23, nome: 'wurstel', descrizione: 'wurstel', prezzo: 1.00);
        ListaIngredienti porcini = ListaIngredienti(key: 24, nome: 'funghi porcini', descrizione: 'funghi porcini', prezzo: 1.00);
        ListaIngredienti fresco = ListaIngredienti(key: 25, nome: 'pomodoro fresco', descrizione: 'pomodoro ramato fresco', prezzo: 1.00);
        ListaIngredienti salsiccia = ListaIngredienti(key: 26, nome: 'salsiccia fresca', descrizione: 'salsiccia fresca', prezzo: 1.00);
        ListaIngredienti uova = ListaIngredienti(key: 27, nome: 'uova', descrizione: 'uova', prezzo: 1.00);
        ListaIngredienti melanzane = ListaIngredienti(key: 28, nome: 'melanzane', descrizione: 'melanzane fresche al forno', prezzo: 1.00);
        ListaIngredienti zucchine = ListaIngredienti(key: 29, nome: 'zucchine', descrizione: 'zucchine fresche al forno', prezzo: 1.00);
        ListaIngredienti peperoni = ListaIngredienti(key: 30, nome: 'peperoni', descrizione: 'peperoni freschi al forno' , prezzo: 1.00); 
        ListaIngredienti brie = ListaIngredienti(key: 31, nome: 'briè', descrizione: 'formaggio briè', prezzo: 1.00);
        ListaIngredienti rucola = ListaIngredienti(key: 32, nome: 'rucola', descrizione: 'rucola', prezzo: 1.00);
        ListaIngredienti scaglie_grana = ListaIngredienti(key:33, nome: 'scaglie di grana', descrizione: 'scaglie di grana', prezzo: 1.00);
        ListaIngredienti spinaci = ListaIngredienti(key: 34, nome: 'spinaci', descrizione: 'spinaci', prezzo: 1.00);
        ListaIngredienti pancetta = ListaIngredienti(key: 35, nome: 'pancetta stufata', descrizione: 'pancetta stufata', prezzo: 1.80);
        ListaIngredienti panna = ListaIngredienti(key: 36, nome: 'panna', descrizione: 'panna da cucina UHT', prezzo: 1.00);
        ListaIngredienti stracchino = ListaIngredienti(key: 37, nome: 'stracchino', descrizione: 'stracchino', prezzo: 1.00);
        ListaIngredienti radicchio = ListaIngredienti(key: 38, nome: 'radicchio di Treviso', descrizione: 'radicchio tardivo di Treviso', prezzo: 1.00);
        ListaIngredienti provola = ListaIngredienti(key: 39, nome: 'provola affumicata', descrizione: 'provola affumicata', prezzo: 1.00);
        ListaIngredienti sfilacci = ListaIngredienti(key: 40, nome: 'sfilacci di cavallo', descrizione: 'sfilacci di cavallo', prezzo: 1.00);
        ListaIngredienti patate = ListaIngredienti(key: 41, nome: 'patate fritte', descrizione: 'patate fritte', prezzo: 1.00);
        ListaIngredienti mais = ListaIngredienti(key: 42, nome: 'mais', descrizione: 'mais dolce', prezzo: 1.00);
        ListaIngredienti ricotta = ListaIngredienti(key: 43, nome: 'ricotta', descrizione: 'ricotta vaccina', prezzo: 1.00);
        ListaIngredienti bufala = ListaIngredienti(key: 44, nome: 'mozzarella bufala', descrizione: 'mozzarella di bufala campana DOP', prezzo: 2.00);
        ListaIngredienti ciliegino = ListaIngredienti(key: 45, nome: 'pomodoro ciliegino', descrizione: 'pomodoro ciliegino', prezzo: 1.00);
        ListaIngredienti asparagi = ListaIngredienti(key: 46, nome: 'asparagi', descrizione: 'asparagi', prezzo: 1.00);
        ListaIngredienti feta = ListaIngredienti(key: 47, nome: 'feta greca', descrizione: 'feta greca', prezzo: 1.00);
        ListaIngredienti culatello = ListaIngredienti(key: 48, nome: 'culatello', descrizione: 'culatello di sauris', prezzo: 1.80);
        ListaIngredienti secchi = ListaIngredienti(key: 49, nome: 'pomodori secchi', descrizione: 'pomodori secchi', prezzo: 1.00);
        ListaIngredienti noci = ListaIngredienti(key: 50, nome: 'noci', descrizione: 'noci', prezzo: 1.00);
        ListaIngredienti brace = ListaIngredienti(key: 51, nome: 'cotto alla brace', descrizione: 'cotto alla brace', prezzo: 1.80);
        ListaIngredienti grana_gratuggiato = ListaIngredienti(key: 52, nome: 'formaggio grana gratuggiato', descrizione: 'formaggio grana gratuggiato', prezzo: 1.00);
        ListaIngredienti salmone = ListaIngredienti(key: 53, nome: 'salmone affumicato', descrizione: 'salmone scozzese affumicato', prezzo: 1.80);
        ListaIngredienti gamberetti = ListaIngredienti(key: 54, nome: 'gamberetti', descrizione: 'gamberetti', prezzo: 1.80);
        ListaIngredienti gambero = ListaIngredienti(key: 55, nome: 'gambero', descrizione: 'gambero', prezzo: 0.00);
        ListaIngredienti polpo = ListaIngredienti(key: 56, nome: 'polpo', descrizione: 'polpo', prezzo: 0.00);
        ListaIngredienti cozze = ListaIngredienti(key: 57, nome: 'cozze', descrizione: 'cozze', prezzo: 0.00);
        ListaIngredienti vongole = ListaIngredienti(key: 58, nome: 'vongole', descrizione: 'vongole', prezzo:0.00);
        ListaIngredienti seppie = ListaIngredienti(key: 59, nome: 'seppie', descrizione: 'seppie', prezzo: 0.00);
        ListaIngredienti sopressa = ListaIngredienti(key: 60, nome: 'sopressa veneta', descrizione: 'sopressa veneta', prezzo: 1.80);
        ListaIngredienti pepe = ListaIngredienti(key: 61, nome: 'pepe', descrizione: 'pepe nero', prezzo: 0.00);
        ListaIngredienti pecorino = ListaIngredienti(key: 62, nome: 'pecorino romano', descrizione: 'pecorino romano', prezzo: 1.00);
        ListaIngredienti guanciale = ListaIngredienti(key: 63, nome: 'guanciale', descrizione: 'guanciale', prezzo: 1.80);
        ListaIngredienti pesto = ListaIngredienti(key: 64, nome: 'pesto alla genovese', descrizione: 'pesto alla genovese', prezzo: 1.00);
        ListaIngredienti aglio = ListaIngredienti(key: 65, nome: 'aglio', descrizione: 'aglio rosa spagnolo', prezzo: 0.00);
        ListaIngredienti carciofi = ListaIngredienti(key: 66, nome: 'carciofi', descrizione: 'carciofi', prezzo: 1.00);
        

        repoIngredienti repo = repoIngredienti(lstIngredienti: [
           mozzarella, pomodoro, olio, rosmarino, origano, prosciutto,
           funghi, salamino, gorgonzola, speck, bresaola, acciughe, capperi, olive, tonno,
           cipolla, emmental, montasio, latteria, chiodini, crudo, porchetta, wurstel, porcini, fresco,
           salsiccia, uova, melanzane, zucchine, peperoni, brie, rucola, scaglie_grana, spinaci, pancetta,
           panna, stracchino, radicchio, provola, sfilacci, patate, mais, ricotta, bufala, ciliegino, asparagi, 
           feta, culatello, secchi, noci, brace, grana_gratuggiato, salmone, gamberetti, gambero, polpo, cozze, 
           vongole, seppie, sopressa, pepe, pecorino, guanciale, pesto, aglio, carciofi
        ]);


        ListaPizze margheritap = ListaPizze(nome: 'margherita', descrizione: 'pizza margherita', prezzo: 5.50, listaIngredienti: [2,1]);
        ListaPizze marinarap = ListaPizze(nome: 'marinara', descrizione: 'pizza marinara', prezzo: 4.80, listaIngredienti: [2,65, 5]);
        ListaPizze panepizzap = ListaPizze(nome: 'pane pizza', descrizione: 'disco di pasta con oilo evo e rosmarino/origano', prezzo: 3.50, listaIngredienti: [3,4,5]);
        ListaPizze prosciuttop = ListaPizze(nome: 'prosciutto', descrizione: 'pizza con prosciutto cotto', prezzo: 6.50, listaIngredienti: [2,1,6]);
        ListaPizze pfp = ListaPizze(nome: 'prosciutto e funghi', descrizione: 'pizza con prosciutto e funghi', prezzo: 7.80, listaIngredienti: [2,1,6,7]);
        ListaPizze diavolap = ListaPizze(nome: 'diavola', descrizione: 'pizza con salamino piccante', prezzo: 7.20, listaIngredienti: [2,1,8]);
        ListaPizze funghip = ListaPizze(nome: 'funghi', descrizione: 'pizza con funghi', prezzo: 6.50, listaIngredienti: [2,1,7]);
        ListaPizze gorgonzola_speckp = ListaPizze(nome: 'gorgonzola e speck', descrizione: 'pizza con gorgonzola e speck', prezzo: 8.20, listaIngredienti: [2,1,9,10]);
        ListaPizze bresaolap = ListaPizze(nome: 'bresaola', descrizione: 'pizza con bresaola', prezzo: 7.50, listaIngredienti: [2,1,11]);
        ListaPizze sicilianap = ListaPizze(nome: 'siciliana', descrizione: 'pizza alla siciliana', prezzo: 8.00, listaIngredienti: [2,1,8,12,13,14]);
        ListaPizze tonnop = ListaPizze(nome: 'tonno', descrizione: 'pizza con tonno', prezzo: 6.80, listaIngredienti: [2,1,15]);
        ListaPizze tonno_cipollap = ListaPizze(nome: 'tonno e cipolla', descrizione: 'pizza con tonno e cipolla', prezzo: 7.50, listaIngredienti: [2,1,15,16]);
        ListaPizze pugliesep = ListaPizze(nome: 'pugliese', descrizione: 'pizza con cipolla', prezzo: 6.00, listaIngredienti: [2,1,16]);
        ListaPizze quattro_formaggip = ListaPizze(nome: 'quattro formaggi', descrizione: 'pizza con quattro formaggi', prezzo: 7.80, listaIngredienti: [2,1,9,17,18,19]);
        ListaPizze romanap = ListaPizze(nome: 'romana', descrizione: 'pizza con acciughe', prezzo: 6.80, listaIngredienti: [2,1,12]);
        ListaPizze chiodinip = ListaPizze(nome: 'chiodini', descrizione: 'pizza con funghi chiodini', prezzo: 6.80, listaIngredienti: [2,1,20]);
        ListaPizze sdanielep = ListaPizze(nome: 'Parma', descrizione: 'pizza con crudi di Parma', prezzo: 8.00, listaIngredienti: [2,1,21]);
        ListaPizze tirolesep = ListaPizze(nome: 'tirolese', descrizione: 'pizza con speck', prezzo: 8.00, listaIngredienti: [2,1,10]);
        ListaPizze porchettap = ListaPizze(nome: 'porchetta', descrizione: 'pizza con porchetta trevigiana', prezzo: 8.00, listaIngredienti: [2,1,22]);
        ListaPizze viennesep = ListaPizze(nome: 'viennese', descrizione: 'pizza con wurstel', prezzo: 7.00, listaIngredienti: [2,1,23]);
        ListaPizze porcini_porchettap = ListaPizze(nome: 'porcini e porchetta', descrizione: 'pizza con porcini e porchetta', prezzo: 8.80, listaIngredienti: [2,1,24,22]);
        ListaPizze porcinip = ListaPizze(nome: 'porcini', descrizione: 'pizza con funghi porcini', prezzo: 7.80, listaIngredienti: [2,1,24]);
        ListaPizze capricciosap = ListaPizze(nome: 'capricciosa', descrizione: 'pizza con funghi, prosciutto e carciofi', prezzo: 8.80, listaIngredienti: [2,1,6,7,66]);
      
       
        //menu m = menu(listaPizze: [margherita]);


        //String json = jsonEncode(players.map((i) => i.toJson()).toList()).toString();

       // String json = jsonEncode()



      printLongString(json.encode(repo));
  /// log(json.encode(repo));

      //  print(json.encode(repo));

        }catch(e) {
          print('errore: ${e.toString()}');
        }

      
     
    });

 /*    DatabaseReference databaseReference =
      FirebaseDatabase.instance.reference().child('data');

      final snapshot = await databaseReference.get();
      if(snapshot.exists) {
        Map<String, dynamic> mp = json.decode(snapshot.value.toString());
        print(snapshot.value);
        print(mp);
      }
      else {
        print('value not exsist');
      }*/
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
