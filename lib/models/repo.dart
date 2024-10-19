import 'package:npsite/models/menu.dart';

class repo {

  late  repoIngredienti repos;
  late repoPizze repop;

 

  
  repo() {
    ListaIngredienti mozzarella = ListaIngredienti(
            key: 1,
            nome: 'mozzarella',
            descrizione: 'mozzarella fior di latte',
            prezzo: 1.00);
        ListaIngredienti pomodoro = ListaIngredienti(
            key: 2,
            nome: 'pomodoro',
            descrizione: 'pomodoro pelato',
            prezzo: 1.00);
        ListaIngredienti olio = ListaIngredienti(
            key: 3,
            nome: 'olio extra vergine di oliva',
            descrizione: 'olio EVO',
            prezzo: 0.50);
        ListaIngredienti rosmarino = ListaIngredienti(
            key: 4, nome: 'rosmarino', descrizione: 'rosmarino', prezzo: 0.00);
        ListaIngredienti origano = ListaIngredienti(
            key: 5, nome: 'origano', descrizione: 'origano', prezzo: 0.00);
        ListaIngredienti prosciutto = ListaIngredienti(
            key: 6,
            nome: 'prosciutto cotto',
            descrizione: 'prosciutto cotto',
            prezzo: 1.00);
        ListaIngredienti funghi = ListaIngredienti(
            key: 7,
            nome: 'funghi champignon',
            descrizione: 'funghi champignon',
            prezzo: 1.00);
        ListaIngredienti salamino = ListaIngredienti(
            key: 8,
            nome: 'salamino piccante',
            descrizione: 'salamino piccante levoni',
            prezzo: 1.00);
        ListaIngredienti gorgonzola = ListaIngredienti(
            key: 9,
            nome: 'gorgonzola piccante',
            descrizione: 'gorgonzola piccante bergader',
            prezzo: 1.00);
        ListaIngredienti speck = ListaIngredienti(
            key: 10,
            nome: 'speck',
            descrizione: 'speck morgante',
            prezzo: 1.80);
        ListaIngredienti bresaola = ListaIngredienti(
            key: 11,
            nome: 'bresaola punta d' 'anca',
            descrizione: 'bresaola punta d' 'anca rigamonti',
            prezzo: 1.80);
        ListaIngredienti acciughe = ListaIngredienti(
            key: 12, nome: 'acciughe', descrizione: 'acciughe', prezzo: 1.00);
        ListaIngredienti capperi = ListaIngredienti(
            key: 13, nome: 'capperi', descrizione: 'capperi', prezzo: 1.00);
        ListaIngredienti olive = ListaIngredienti(
            key: 14,
            nome: 'olive taggiasche',
            descrizione: 'oliva di taggia',
            prezzo: 1.00);
        ListaIngredienti tonno = ListaIngredienti(
            key: 15,
            nome: 'tonno',
            descrizione: 'tonno pinna gialla',
            prezzo: 1.00);
        ListaIngredienti cipolla = ListaIngredienti(
            key: 16,
            nome: 'cipolla di tropea',
            descrizione: 'cipolla di tropea',
            prezzo: 1.00);
        ListaIngredienti emmental = ListaIngredienti(
            key: 17, nome: 'emmental', descrizione: 'emmental', prezzo: 1.00);
        ListaIngredienti montasio = ListaIngredienti(
            key: 18, nome: 'montasio', descrizione: 'montasio', prezzo: 1.00);
        ListaIngredienti latteria = ListaIngredienti(
            key: 19,
            nome: 'latteria',
            descrizione: 'formaggio latteria',
            prezzo: 1.00);
        ListaIngredienti chiodini = ListaIngredienti(
            key: 20,
            nome: 'funghi chiodini',
            descrizione: 'funghi chiodini',
            prezzo: 1.00);
        ListaIngredienti crudo = ListaIngredienti(
            key: 21,
            nome: 'crudo di parma',
            descrizione: 'crudo di parma Levoni',
            prezzo: 1.80);
        ListaIngredienti porchetta = ListaIngredienti(
            key: 22,
            nome: 'porchetta trevigiana',
            descrizione: 'porchetta trevigiana',
            prezzo: 1.80);
        ListaIngredienti wurstel = ListaIngredienti(
            key: 23, nome: 'wurstel', descrizione: 'wurstel', prezzo: 1.00);
        ListaIngredienti porcini = ListaIngredienti(
            key: 24,
            nome: 'funghi porcini',
            descrizione: 'funghi porcini',
            prezzo: 1.00);
        ListaIngredienti fresco = ListaIngredienti(
            key: 25,
            nome: 'pomodoro fresco',
            descrizione: 'pomodoro ramato fresco',
            prezzo: 1.00);
        ListaIngredienti salsiccia = ListaIngredienti(
            key: 26,
            nome: 'salsiccia fresca',
            descrizione: 'salsiccia fresca',
            prezzo: 1.00);
        ListaIngredienti uova = ListaIngredienti(
            key: 27, nome: 'uova', descrizione: 'uova', prezzo: 1.00);
        ListaIngredienti melanzane = ListaIngredienti(
            key: 28,
            nome: 'melanzane',
            descrizione: 'melanzane fresche al forno',
            prezzo: 1.00);
        ListaIngredienti zucchine = ListaIngredienti(
            key: 29,
            nome: 'zucchine',
            descrizione: 'zucchine fresche al forno',
            prezzo: 1.00);
        ListaIngredienti peperoni = ListaIngredienti(
            key: 30,
            nome: 'peperoni',
            descrizione: 'peperoni freschi al forno',
            prezzo: 1.00);
        ListaIngredienti brie = ListaIngredienti(
            key: 31, nome: 'briè', descrizione: 'formaggio briè', prezzo: 1.00);
        ListaIngredienti rucola = ListaIngredienti(
            key: 32, nome: 'rucola', descrizione: 'rucola', prezzo: 1.00);
        ListaIngredienti scaglie_grana = ListaIngredienti(
            key: 33,
            nome: 'scaglie di grana',
            descrizione: 'scaglie di grana',
            prezzo: 1.00);
        ListaIngredienti spinaci = ListaIngredienti(
            key: 34, nome: 'spinaci', descrizione: 'spinaci', prezzo: 1.00);
        ListaIngredienti pancetta = ListaIngredienti(
            key: 35,
            nome: 'pancetta stufata',
            descrizione: 'pancetta stufata',
            prezzo: 1.80);
        ListaIngredienti panna = ListaIngredienti(
            key: 36,
            nome: 'panna',
            descrizione: 'panna da cucina UHT',
            prezzo: 1.00);
        ListaIngredienti stracchino = ListaIngredienti(
            key: 37,
            nome: 'stracchino',
            descrizione: 'stracchino',
            prezzo: 1.00);
        ListaIngredienti radicchio = ListaIngredienti(
            key: 38,
            nome: 'radicchio di Treviso',
            descrizione: 'radicchio tardivo di Treviso',
            prezzo: 1.00);
        ListaIngredienti provola = ListaIngredienti(
            key: 39,
            nome: 'provola affumicata',
            descrizione: 'provola affumicata',
            prezzo: 1.00);
        ListaIngredienti sfilacci = ListaIngredienti(
            key: 40,
            nome: 'sfilacci di cavallo',
            descrizione: 'sfilacci di cavallo',
            prezzo: 1.00);
        ListaIngredienti patate = ListaIngredienti(
            key: 41,
            nome: 'patate fritte',
            descrizione: 'patate fritte',
            prezzo: 1.00);
        ListaIngredienti mais = ListaIngredienti(
            key: 42, nome: 'mais', descrizione: 'mais dolce', prezzo: 1.00);
        ListaIngredienti ricotta = ListaIngredienti(
            key: 43,
            nome: 'ricotta',
            descrizione: 'ricotta vaccina',
            prezzo: 1.00);
        ListaIngredienti bufala = ListaIngredienti(
            key: 44,
            nome: 'mozzarella bufala',
            descrizione: 'mozzarella di bufala campana DOP',
            prezzo: 2.00);
        ListaIngredienti ciliegino = ListaIngredienti(
            key: 45,
            nome: 'pomodoro ciliegino',
            descrizione: 'pomodoro ciliegino',
            prezzo: 1.00);
        ListaIngredienti asparagi = ListaIngredienti(
            key: 46, nome: 'asparagi', descrizione: 'asparagi', prezzo: 1.00);
        ListaIngredienti feta = ListaIngredienti(
            key: 47,
            nome: 'feta greca',
            descrizione: 'feta greca',
            prezzo: 1.00);
        ListaIngredienti culatello = ListaIngredienti(
            key: 48,
            nome: 'culatello',
            descrizione: 'culatello di sauris',
            prezzo: 1.80);
        ListaIngredienti secchi = ListaIngredienti(
            key: 49,
            nome: 'pomodori secchi',
            descrizione: 'pomodori secchi',
            prezzo: 1.00);
        ListaIngredienti noci = ListaIngredienti(
            key: 50, nome: 'noci', descrizione: 'noci', prezzo: 1.00);
        ListaIngredienti brace = ListaIngredienti(
            key: 51,
            nome: 'cotto alla brace',
            descrizione: 'cotto alla brace',
            prezzo: 1.80);
        ListaIngredienti grana_gratuggiato = ListaIngredienti(
            key: 52,
            nome: 'formaggio grana gratuggiato',
            descrizione: 'formaggio grana gratuggiato',
            prezzo: 1.00);
        ListaIngredienti salmone = ListaIngredienti(
            key: 53,
            nome: 'salmone affumicato',
            descrizione: 'salmone scozzese affumicato',
            prezzo: 1.80);
        ListaIngredienti gamberetti = ListaIngredienti(
            key: 54,
            nome: 'gamberetti',
            descrizione: 'gamberetti',
            prezzo: 1.80);
        ListaIngredienti gambero = ListaIngredienti(
            key: 55, nome: 'gambero', descrizione: 'gambero', prezzo: 0.00);
        ListaIngredienti polpo = ListaIngredienti(
            key: 56, nome: 'polpo', descrizione: 'polpo', prezzo: 0.00);
        ListaIngredienti cozze = ListaIngredienti(
            key: 57, nome: 'cozze', descrizione: 'cozze', prezzo: 0.00);
        ListaIngredienti vongole = ListaIngredienti(
            key: 58, nome: 'vongole', descrizione: 'vongole', prezzo: 0.00);
        ListaIngredienti seppie = ListaIngredienti(
            key: 59, nome: 'seppie', descrizione: 'seppie', prezzo: 0.00);
        ListaIngredienti sopressa = ListaIngredienti(
            key: 60,
            nome: 'sopressa veneta',
            descrizione: 'sopressa veneta',
            prezzo: 1.80);
        ListaIngredienti pepe = ListaIngredienti(
            key: 61, nome: 'pepe', descrizione: 'pepe nero', prezzo: 0.00);
        ListaIngredienti pecorino = ListaIngredienti(
            key: 62,
            nome: 'pecorino romano',
            descrizione: 'pecorino romano',
            prezzo: 1.00);
        ListaIngredienti guanciale = ListaIngredienti(
            key: 63, nome: 'guanciale', descrizione: 'guanciale', prezzo: 1.80);
        ListaIngredienti Pto = ListaIngredienti(
            key: 64,
            nome: 'Pto alla genovese',
            descrizione: 'Pto alla genovese',
            prezzo: 1.00);
        ListaIngredienti aglio = ListaIngredienti(
            key: 65,
            nome: 'aglio',
            descrizione: 'aglio rosa spagnolo',
            prezzo: 0.00);
        ListaIngredienti carciofi = ListaIngredienti(
            key: 66, nome: 'carciofi', descrizione: 'carciofi', prezzo: 1.00);
        ListaIngredienti basilico = ListaIngredienti(
            key: 67,
            nome: 'basilico',
            descrizione: 'basilico fresco',
            prezzo: 0.00);
        ListaIngredienti baby = ListaIngredienti(
            key: 68,
            nome: 'pizza baby',
            descrizione: 'pizza di dimensione ridotta',
            prezzo: -1.00,
            tipologia: 'ADD');
        ListaIngredienti abbondante = ListaIngredienti(
            key: 69,
            nome: 'abbondante',
            descrizione: 'pizza con condimento abbondante',
            prezzo: 1.00,
            tipologia: 'ADD');
        ListaIngredienti aggiunte = ListaIngredienti(
            key: 70,
            nome: 'aggiunte',
            descrizione:
                'aggiunta di ingredienti, esclusi affettai, bufala, salmone gamberetti',
            prezzo: 1.00,
            tipologia: 'ADD');
        ListaIngredienti aggiunte_affettato = ListaIngredienti(
            key: 71,
            nome: 'aggiunta affettato',
            descrizione:
                'aggiunta affettato, esclusi gli affettati che vanno in cottura',
            prezzo: 1.80,
            tipologia: 'ADD');
        ListaIngredienti aggiunte_bufala = ListaIngredienti(
            key: 72,
            nome: 'aggiunta mozzarella di bufala',
            descrizione: 'aggiunta mozzarella di bufala',
            prezzo: 2.00,
            tipologia: 'ADD');

        repos = repoIngredienti(lstIngredienti: [
          mozzarella,
          pomodoro,
          olio,
          rosmarino,
          origano,
          prosciutto,
          funghi,
          salamino,
          gorgonzola,
          speck,
          bresaola,
          acciughe,
          capperi,
          olive,
          tonno,
          cipolla,
          emmental,
          montasio,
          latteria,
          chiodini,
          crudo,
          porchetta,
          wurstel,
          porcini,
          fresco,
          salsiccia,
          uova,
          melanzane,
          zucchine,
          peperoni,
          brie,
          rucola,
          scaglie_grana,
          spinaci,
          pancetta,
          panna,
          stracchino,
          radicchio,
          provola,
          sfilacci,
          patate,
          mais,
          ricotta,
          bufala,
          ciliegino,
          asparagi,
          feta,
          culatello,
          secchi,
          noci,
          brace,
          grana_gratuggiato,
          salmone,
          gamberetti,
          gambero,
          polpo,
          cozze,
          vongole,
          seppie,
          sopressa,
          pepe,
          pecorino,
          guanciale,
          Pto,
          aglio,
          carciofi,
          basilico,
          baby,
          abbondante,
          aggiunte,
          aggiunte_affettato,
          aggiunte_bufala
        ]);

        ListaPizze margheritap = ListaPizze(
            nome: 'margherita',
            descrizione: 'pizza margherita',
            prezzo: 5.50,
            listaIngredienti: [2, 1],
            tipologia: 'C');
        ListaPizze marinarap = ListaPizze(
            nome: 'marinara',
            descrizione: 'pizza marinara',
            prezzo: 4.80,
            listaIngredienti: [2, 65, 5],
            tipologia: 'C');
        ListaPizze panepizzap = ListaPizze(
            nome: 'pane pizza',
            descrizione: 'disco di pasta con oilo evo e rosmarino/origano',
            prezzo: 3.50,
            listaIngredienti: [3, 4, 5],
            tipologia: 'C');
        ListaPizze prosciuttop = ListaPizze(
            nome: 'prosciutto',
            descrizione: 'pizza con prosciutto cotto',
            prezzo: 6.50,
            listaIngredienti: [2, 1, 6],
            tipologia: 'C');
        ListaPizze pfp = ListaPizze(
            nome: 'prosciutto e funghi',
            descrizione: 'pizza con prosciutto e funghi',
            prezzo: 7.80,
            listaIngredienti: [2, 1, 6, 7],
            tipologia: 'C');
        ListaPizze diavolap = ListaPizze(
            nome: 'diavola',
            descrizione: 'pizza con salamino piccante',
            prezzo: 7.20,
            listaIngredienti: [2, 1, 8],
            tipologia: 'C');
        ListaPizze funghip = ListaPizze(
            nome: 'funghi',
            descrizione: 'pizza con funghi',
            prezzo: 6.50,
            listaIngredienti: [2, 1, 7],
            tipologia: 'C');
        ListaPizze gorgonzola_speckp = ListaPizze(
            nome: 'gorgonzola e speck',
            descrizione: 'pizza con gorgonzola e speck',
            prezzo: 8.20,
            listaIngredienti: [2, 1, 9, 10],
            tipologia: 'C');
        ListaPizze bresaolap = ListaPizze(
            nome: 'bresaola',
            descrizione: 'pizza con bresaola',
            prezzo: 7.50,
            listaIngredienti: [2, 1, 11],
            tipologia: 'C');
        ListaPizze sicilianap = ListaPizze(
            nome: 'siciliana',
            descrizione: 'pizza alla siciliana',
            prezzo: 8.00,
            listaIngredienti: [2, 1, 8, 12, 13, 14],
            tipologia: 'C');
        ListaPizze tonnop = ListaPizze(
            nome: 'tonno',
            descrizione: 'pizza con tonno',
            prezzo: 6.80,
            listaIngredienti: [2, 1, 15],
            tipologia: 'C');
        ListaPizze tonno_cipollap = ListaPizze(
            nome: 'tonno e cipolla',
            descrizione: 'pizza con tonno e cipolla',
            prezzo: 7.50,
            listaIngredienti: [2, 1, 15, 16],
            tipologia: 'C');
        ListaPizze pugliesep = ListaPizze(
            nome: 'pugliese',
            descrizione: 'pizza con cipolla',
            prezzo: 6.00,
            listaIngredienti: [2, 1, 16],
            tipologia: 'C');
        ListaPizze quattro_formaggip = ListaPizze(
            nome: 'quattro formaggi',
            descrizione: 'pizza con quattro formaggi',
            prezzo: 7.80,
            listaIngredienti: [2, 1, 9, 17, 18, 19],
            tipologia: 'C');
        ListaPizze romanap = ListaPizze(
            nome: 'romana',
            descrizione: 'pizza con acciughe',
            prezzo: 6.80,
            listaIngredienti: [2, 1, 12],
            tipologia: 'C');
        ListaPizze chiodinip = ListaPizze(
            nome: 'chiodini',
            descrizione: 'pizza con funghi chiodini',
            prezzo: 6.80,
            listaIngredienti: [2, 1, 20],
            tipologia: 'C');
        ListaPizze sdanielep = ListaPizze(
            nome: 'parma',
            descrizione: 'pizza con crudi di Parma',
            prezzo: 8.00,
            listaIngredienti: [2, 1, 21],
            tipologia: 'C');
        ListaPizze tirolesep = ListaPizze(
            nome: 'tirolese',
            descrizione: 'pizza con speck',
            prezzo: 8.00,
            listaIngredienti: [2, 1, 10],
            tipologia: 'C');
        ListaPizze porchettap = ListaPizze(
            nome: 'porchetta',
            descrizione: 'pizza con porchetta trevigiana',
            prezzo: 8.00,
            listaIngredienti: [2, 1, 22],
            tipologia: 'C');
        ListaPizze viennesep = ListaPizze(
            nome: 'viennese',
            descrizione: 'pizza con wurstel',
            prezzo: 7.00,
            listaIngredienti: [2, 1, 23],
            tipologia: 'C');
        ListaPizze porcini_porchettap = ListaPizze(
            nome: 'porcini e porchetta',
            descrizione: 'pizza con porcini e porchetta',
            prezzo: 8.80,
            listaIngredienti: [2, 1, 24, 22],
            tipologia: 'C');
        ListaPizze porcinip = ListaPizze(
            nome: 'porcini',
            descrizione: 'pizza con funghi porcini',
            prezzo: 7.80,
            listaIngredienti: [2, 1, 24],
            tipologia: 'C');
        ListaPizze capricciosap = ListaPizze(
            nome: 'capricciosa',
            descrizione: 'pizza con funghi, prosciutto e carciofi',
            prezzo: 8.80,
            listaIngredienti: [2, 1, 6, 7, 66],
            tipologia: 'C');
        ListaPizze quattro_stagionip = ListaPizze(
            nome: 'quattro stagioni',
            descrizione:
                'pizza quattro satgioni, prosciutto, funghi, carciofi e acciughe',
            prezzo: 9.00,
            listaIngredienti: [2, 1, 6, 7, 66, 12],
            tipologia: 'C');
        ListaPizze salsicciap = ListaPizze(
            nome: 'salsiccia',
            descrizione: 'pizza con salsiccia fresca',
            prezzo: 7.00,
            listaIngredienti: [2, 1, 26],
            tipologia: 'C');
        ListaPizze rusticap = ListaPizze(
            nome: 'rustica',
            descrizione: 'pizza con salamino piccante e cipolla',
            prezzo: 7.80,
            listaIngredienti: [2, 1, 8, 16],
            tipologia: 'S');
        ListaPizze bersaglierap = ListaPizze(
            nome: 'bersagliera',
            descrizione:
                'pizza con prosciutto, funghi, salamino, olive, pomodoro fresco',
            prezzo: 8.80,
            listaIngredienti: [2, 1, 6, 7, 8, 14, 25],
            tipologia: 'S');
        ListaPizze contadinap = ListaPizze(
            nome: 'contadina',
            descrizione: 'pizza con prosciutto, funghi, salsiccia, uova',
            prezzo: 8.50,
            listaIngredienti: [2, 1, 6, 7, 26, 27, 25],
            tipologia: 'S');
        ListaPizze svincentp = ListaPizze(
            nome: 'st.Vincent',
            descrizione: 'pizza con verdure, porcini e prosciutto di parma',
            prezzo: 9.00,
            listaIngredienti: [2, 1, 28, 29, 30, 24, 21, 25],
            tipologia: 'S');
        ListaPizze boscaiolap = ListaPizze(
            nome: 'boscaiola',
            descrizione: 'pizza con tris di funghi e speck',
            prezzo: 8.50,
            listaIngredienti: [2, 1, 7, 20, 24, 10],
            tipologia: 'S');
        ListaPizze salzanop = ListaPizze(
            nome: 'salzano',
            descrizione:
                'pizza con verdure miste, salamino, olive, pomodoro fresco',
            prezzo: 8.80,
            listaIngredienti: [2, 1, 28, 29, 30, 8, 14, 25],
            tipologia: 'S');
        ListaPizze brie_speckp = ListaPizze(
            nome: 'briè e speck',
            descrizione: 'pizza con briè e speck',
            prezzo: 8.50,
            listaIngredienti: [2, 1, 31, 10],
            tipologia: 'S');
        ListaPizze estivap = ListaPizze(
            nome: 'estiva',
            descrizione: 'pizza con pomodoro fresco, rucola e scaglie di grana',
            prezzo: 7.80,
            listaIngredienti: [2, 1, 32, 33, 25],
            tipologia: 'S');
        ListaPizze pazzap = ListaPizze(
            nome: 'pazza',
            descrizione:
                'pizza con spinaci, gorgonzola, salamino, uova e pancetta',
            prezzo: 9.00,
            listaIngredienti: [2, 1, 34, 8, 9, 27, 35],
            tipologia: 'S');
        ListaPizze panna_speck_funghip = ListaPizze(
            nome: 'panna speck e funghi',
            descrizione: 'pizza con panna, speck e funghi',
            prezzo: 8.80,
            listaIngredienti: [2, 1, 36, 10, 7],
            tipologia: 'S');
        ListaPizze angelap = ListaPizze(
            nome: 'angela',
            descrizione: 'pizza con stracchino, rucola e pomodoro fresco',
            prezzo: 7.50,
            listaIngredienti: [2, 1, 37, 25, 32],
            tipologia: 'S');
        ListaPizze genuinap = ListaPizze(
            nome: 'genuina',
            descrizione: 'pizza con radicchio/asparagi salsiccia e provola',
            prezzo: 9.00,
            listaIngredienti: [2, 1, 38, 26, 39],
            tipologia: 'S');
        ListaPizze annap = ListaPizze(
            nome: 'anna',
            descrizione: 'pizza con acciughe e peperoni',
            prezzo: 7.80,
            listaIngredienti: [2, 1, 12, 30],
            tipologia: 'S');
        ListaPizze valtellinap = ListaPizze(
            nome: 'valtellina',
            descrizione:
                'pizza con bresaola, rucola, pomodoro fresco e scaglie di grana',
            prezzo: 9.00,
            listaIngredienti: [2, 1, 11, 32, 25, 33],
            tipologia: 'S');
        ListaPizze curiosap = ListaPizze(
            nome: 'curiosa',
            descrizione:
                'pizza con sfilacci di cavallo, rucola e pomodoro fresco',
            prezzo: 9.00,
            listaIngredienti: [2, 1, 40, 32, 25],
            tipologia: 'S');
        ListaPizze patatosap = ListaPizze(
            nome: 'patate fritte',
            descrizione: 'pizza con patate fritte',
            prezzo: 7.00,
            listaIngredienti: [2, 1, 41],
            tipologia: 'S');
        ListaPizze americanap = ListaPizze(
            nome: 'americana',
            descrizione: 'pizza con patate e wurstel',
            prezzo: 8.00,
            listaIngredienti: [2, 1, 23, 41],
            tipologia: 'S');
        ListaPizze brie_mais_frescop = ListaPizze(
            nome: 'briè mai e pomodoro fresco',
            descrizione: 'pizza con briè mais e pomodoro fresco',
            prezzo: 8.80,
            listaIngredienti: [2, 1, 31, 42, 25],
            tipologia: 'S');
        ListaPizze rucola_pomodoro_frescop = ListaPizze(
            nome: 'rucola e pomodoro fresco',
            descrizione: 'pizza con rucola e pomodoro fresco',
            prezzo: 7.20,
            listaIngredienti: [2, 1, 32, 25],
            tipologia: 'S');
        ListaPizze ricotta_spinacip = ListaPizze(
            nome: 'ricotta e spinaci',
            descrizione: 'pizza con ricotta e spinaci',
            prezzo: 7.50,
            listaIngredienti: [2, 1, 43, 34],
            tipologia: 'S');
        ListaPizze affumicatap = ListaPizze(
            nome: 'affumicata',
            descrizione: 'pizza con provola e speck',
            prezzo: 8.50,
            listaIngredienti: [2, 1, 39, 10],
            tipologia: 'S');
        ListaPizze docp = ListaPizze(
            nome: 'doc',
            descrizione: 'pizza con bufala, grana e basilico',
            prezzo: 8.80,
            listaIngredienti: [2, 1, 44, 52, 67],
            tipologia: 'S');
        ListaPizze bufalinap = ListaPizze(
            nome: 'bufalina',
            descrizione: 'pizza con bufala e ciliegino',
            prezzo: 8.80,
            listaIngredienti: [2, 1, 44, 45],
            tipologia: 'S');
        ListaPizze paesanap = ListaPizze(
            nome: 'paesana',
            descrizione: 'pizza con porchetta e pomodoro fresco',
            prezzo: 8.80,
            listaIngredienti: [2, 1, 22, 25],
            tipologia: 'S');
        ListaPizze venetap = ListaPizze(
            nome: 'veneta',
            descrizione: 'pizza radicchi/asparagi, salsiccia e cipolla',
            prezzo: 9.00,
            listaIngredienti: [2, 1, 38, 26, 16],
            tipologia: 'S');
        ListaPizze asparagi_uovap = ListaPizze(
            nome: 'asparagi e uova',
            descrizione: 'pizza con asparagi e uova',
            prezzo: 7.80,
            listaIngredienti: [2, 1, 46, 27],
            tipologia: 'S');
        ListaPizze grecap = ListaPizze(
            nome: 'greca',
            descrizione: 'pizza con feta greca, cipolla e olive taggiasche',
            prezzo: 8.50,
            listaIngredienti: [2, 1, 47, 16, 14],
            tipologia: 'S');
        ListaPizze deliziosap = ListaPizze(
            nome: 'deliziosa',
            descrizione:
                'pizza con ricotta, ciliegino, rucola, grana a ascaglie e bresaola',
            prezzo: 8.80,
            listaIngredienti: [2, 1, 45, 32, 43, 33, 11],
            tipologia: 'S');
        ListaPizze culatellop = ListaPizze(
            nome: 'culatello',
            descrizione: 'pizza con pomodori secchi e culatello di sauris',
            prezzo: 9.00,
            listaIngredienti: [2, 1, 48, 49],
            tipologia: 'S');
        ListaPizze brie_speck_nocip = ListaPizze(
            nome: 'briè speck e noci',
            descrizione: 'pizza con briè speck e noci',
            prezzo: 8.80,
            listaIngredienti: [2, 1, 31, 10, 50],
            tipologia: 'S');
        ListaPizze cotto_asparagip = ListaPizze(
            nome: 'cotto alla brace ed asparagi',
            descrizione: 'pizza con cotto Praga ed asparagi',
            prezzo: 8.50,
            listaIngredienti: [2, 1, 51, 46],
            tipologia: 'S');
        ListaPizze pancetta_uovap = ListaPizze(
            nome: 'pancetta e uova',
            descrizione: 'pizza con pancetta styfata e uova',
            prezzo: 7.80,
            listaIngredienti: [2, 1, 35, 27],
            tipologia: 'S');
        ListaPizze peperonip = ListaPizze(
            nome: 'peperoni',
            descrizione: 'pizza con peperoni freschi cotti al forno',
            prezzo: 7.00,
            listaIngredienti: [2, 1, 30],
            tipologia: 'V');
        ListaPizze melanzanep = ListaPizze(
            nome: 'melanzane',
            descrizione: 'pizza con melanzane fresche cotte al forno',
            prezzo: 7.00,
            listaIngredienti: [2, 1, 28],
            tipologia: 'V');
        ListaPizze zucchinep = ListaPizze(
            nome: 'zucchine',
            descrizione: 'pizza con zucchine fresche cotte al forno',
            prezzo: 7.00,
            listaIngredienti: [2, 1, 51, 29],
            tipologia: 'V');
        ListaPizze moritzp = ListaPizze(
            nome: 'st.Moritz',
            descrizione: 'pizza con verdure, gorgonzola, cipolla e speck',
            prezzo: 9.00,
            listaIngredienti: [2, 1, 51, 28, 29, 30, 9, 16, 25, 10],
            tipologia: 'V');
        ListaPizze parmigianap = ListaPizze(
            nome: 'parmigiana',
            descrizione: 'pizza con melanzane e grana',
            prezzo: 7.80,
            listaIngredienti: [2, 1, 28, 52],
            tipologia: 'V');
        ListaPizze trevisop = ListaPizze(
            nome: 'treviso',
            descrizione:
                'pizza con radicchio/asparagi, formaggi senza pomodoro',
            prezzo: 9.00,
            listaIngredienti: [1, 38, 17, 18, 19],
            tipologia: 'V');
        ListaPizze radicchiop = ListaPizze(
            nome: 'radicchio',
            descrizione: 'pizza con radicchio di Treviso tardivo',
            prezzo: 8.20,
            listaIngredienti: [2, 1, 38],
            tipologia: 'V');
        ListaPizze frescaip = ListaPizze(
            nome: 'fresca',
            descrizione: 'pizza con pomodoro grappolo fresco',
            prezzo: 6.80,
            listaIngredienti: [2, 1, 25],
            tipologia: 'V');
        ListaPizze verdurep = ListaPizze(
            nome: 'verdure',
            descrizione: 'pizza con verdure fresche cotte al forno',
            prezzo: 8.20,
            listaIngredienti: [2, 1, 28, 29, 30, 25],
            tipologia: 'V');
        ListaPizze ecologicap = ListaPizze(
            nome: 'ecologica',
            descrizione: 'pizza con melanzane, zucchine, radicchio/asparagi',
            prezzo: 8.50,
            listaIngredienti: [2, 1, 28, 29, 38],
            tipologia: 'V');
        ListaPizze calzone_classicop = ListaPizze(
            nome: 'calzone classico',
            descrizione: 'calzone con prosciutto e funghi',
            prezzo: 7.80,
            listaIngredienti: [2, 1, 6, 7],
            tipologia: 'CL');
        ListaPizze calzone_vegetarianop = ListaPizze(
            nome: 'calzone vegetariano',
            descrizione: 'calzone con verdure miste',
            prezzo: 7.80,
            listaIngredienti: [2, 1, 28, 29, 30],
            tipologia: 'CL');
        ListaPizze calzone_farcitop = ListaPizze(
            nome: 'calzone farcito',
            descrizione: 'calzone con ricotta e salamino piccante',
            prezzo: 7.80,
            listaIngredienti: [2, 1, 43, 8],
            tipologia: 'CL');
        ListaPizze calzone_mbp = ListaPizze(
            nome: 'calzone Monte Bianco',
            descrizione: 'calzone con ricotta, spinaci, grana e speck',
            prezzo: 8.00,
            listaIngredienti: [2, 1, 43, 34, 52, 10],
            tipologia: 'CL');
        ListaPizze salmone_zucchinep = ListaPizze(
            nome: 'salmone e zucchine',
            descrizione: 'pizza con salmone e zucchine',
            prezzo: 9.00,
            listaIngredienti: [2, 1, 53, 29],
            tipologia: 'P');
        ListaPizze gamberettip = ListaPizze(
            nome: 'gamberetti',
            descrizione: 'pizza con gamberetti',
            prezzo: 8.20,
            listaIngredienti: [2, 1, 54],
            tipologia: 'P');
        ListaPizze frutti_marep = ListaPizze(
            nome: 'frutti di mare',
            descrizione: 'pizza con frutti di mare',
            prezzo: 9.50,
            listaIngredienti: [2, 1, 55, 56, 57, 58, 59],
            tipologia: 'P');
        ListaPizze salmonep = ListaPizze(
            nome: 'salmone',
            descrizione: 'pizza con salmone',
            prezzo: 8.80,
            listaIngredienti: [2, 1, 53],
            tipologia: 'P');
        ListaPizze pannasalmonep = ListaPizze(
            nome: 'panna e salmone',
            descrizione: 'pizza con panna e salmone',
            prezzo: 9.00,
            listaIngredienti: [2, 1, 36, 53],
            tipologia: 'P');
        ListaPizze vicentinap = ListaPizze(
            nome: 'vicentina',
            descrizione: 'pizza con peperoni, gorgonzola e sopressa ',
            prezzo: 8.80,
            listaIngredienti: [2, 1, 30, 9, 60],
            tipologia: 'NW');
        ListaPizze griciap = ListaPizze(
            nome: 'gricia',
            descrizione: 'pizza con guanciale, pecorino e pepe nero',
            prezzo: 8.50,
            listaIngredienti: [1, 63, 62, 61],
            tipologia: 'NW');
        ListaPizze amatricianap = ListaPizze(
            nome: 'amatriciana',
            descrizione:
                'pizza con guanciale, pecorino, cipolla e pomodoro fresco',
            prezzo: 9.00,
            listaIngredienti: [2, 1, 63, 62, 16, 25],
            tipologia: 'NW');
        ListaPizze manarolap = ListaPizze(
            nome: 'manarola',
            descrizione: 'pizza con Pto alla genovese, salsiccia e ciliegino',
            prezzo: 9.00,
            listaIngredienti: [1, 64, 26, 25],
            tipologia: 'NW');
        ListaPizze palladiop = ListaPizze(
            nome: 'palladio',
            descrizione:
                'pizza con radicchio/asparagi, salamino, gorgonzola e crudo di parma',
            prezzo: 10.00,
            listaIngredienti: [2, 1, 38, 8, 9, 21],
            tipologia: 'NW');
        ListaPizze sostanziosap = ListaPizze(
            nome: 'sostanziosa',
            descrizione: 'pizza con zucchine, porcini, sopressa e cipolla',
            prezzo: 10.00,
            listaIngredienti: [2, 1, 29, 24, 60, 16],
            tipologia: 'NW');
        ListaPizze mt_margherita = ListaPizze(
            nome: 'margherita',
            descrizione: 'pizza da metro, unico gusto, margherita',
            prezzo: 25.00,
            tipologia: '1MT');
        ListaPizze mt_farcita = ListaPizze(
            nome: 'farcita',
            descrizione:
                'pizza da metro, divisibile massimo in 5 gusti, farciti, esclusi affettati, bufala, salmone, gamberetti e frutti di mare',
            prezzo: 28.00,
            tipologia: '1MT');
        ListaPizze mt_farcita_affettati = ListaPizze(
            nome: 'farcita affettai e bufala',
            descrizione:
                'pizza da metro, divisibile massimo in 5 gusti con affettao, bufala, gamberetti, salmone, frutti di mare',
            prezzo: 31.00,
            tipologia: '05MT');
        ListaPizze mmt_margherita = ListaPizze(
            nome: 'margherita',
            descrizione: 'pizza da mezzo metro, unico gusto, margherita',
            prezzo: 15.00,
            tipologia: '1MT');
        ListaPizze mmt_farcita = ListaPizze(
            nome: 'farcita',
            descrizione:
                'pizza da mezzo metro, divisibile massimo in 5 gusti, farciti, esclusi affettati, bufala, salmone, gamberetti e frutti di mare',
            prezzo: 20.00,
            tipologia: '05MT');
        ListaPizze mmt_farcita_affettati = ListaPizze(
            nome: 'farcita affettai e bufala',
            descrizione:
                'pizza da mezzo metro, divisibile massimo in 5 gusti con affettao, bufala, gamberetti, salmone, frutti di mare',
            prezzo: 23.00,
            tipologia: '05MT');

        repop = repoPizze(lstPizze: [
          margheritap,
          marinarap,
          panepizzap,
          prosciuttop,
          pfp,
          diavolap,
          funghip,
          gorgonzola_speckp,
          bresaolap,
          sicilianap,
          tonnop,
          tonno_cipollap,
          pugliesep,
          quattro_formaggip,
          romanap,
          chiodinip,
          sdanielep,
          tirolesep,
          porchettap,
          viennesep,
          porcini_porchettap,
          porcinip,
          capricciosap,
          quattro_stagionip,
          salsicciap,
          rusticap,
          bersaglierap,
          contadinap,
          svincentp,
          boscaiolap,
          salzanop,
          brie_speckp,
          estivap,
          pazzap,
          panna_speck_funghip,
          angelap,
          genuinap,
          annap,
          valtellinap,
          curiosap,
          patatosap,
          americanap,
          brie_mais_frescop,
          rucola_pomodoro_frescop,
          ricotta_spinacip,
          affumicatap,
          docp,
          bufalinap,
          paesanap,
          venetap,
          asparagi_uovap,
          grecap,
          deliziosap,
          culatellop,
          brie_speck_nocip,
          cotto_asparagip,
          pancetta_uovap,
          peperonip,
          melanzanep,
          zucchinep,
          moritzp,
          parmigianap,
          trevisop,
          radicchiop,
          frescaip,
          verdurep,
          ecologicap,
          calzone_classicop,
          calzone_vegetarianop,
          calzone_farcitop,
          calzone_mbp,
          salmone_zucchinep,
          gamberettip,
          frutti_marep,
          salmonep,
          pannasalmonep,
          vicentinap,
          griciap,
          amatricianap,
          manarolap,
          palladiop,
          sostanziosap
        ]);
  }


  String lstStrIngredientiByPizza(String name) {
    
    String ingredienti="";
    bool first = true;

   repop.lstPizze.forEach((element) {
       if(element.nome == name) {
        element.listaIngredienti!.forEach((ingrediente) {
           ingredienti+=first? ingredienteKeyToString(ingrediente) : ', '+ingredienteKeyToString(ingrediente);
           first = false;
        });
       }
   });

    return ingredienti;;
  }


  String ingredienteKeyToString(int key) {
    String val ="";
        val = repos.lstIngredienti.firstWhere((element) => element.key == key).nome!;
    return val;
  }


  repoPizze get getRepoPizze => repop;
   


}