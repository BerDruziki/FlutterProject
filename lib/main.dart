import 'package:flutter/material.dart';
import 'package:meu_app_material/Views/login_view.dart';
import 'package:meu_app_material/Views/salvos_view.dart';
import 'package:meu_app_material/Views/lista_view.dart';
import 'package:meu_app_material/views/avaliacoes_view.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const keyApplicationId = 'fsImgnP9iMpsO9pErSm1flxZn4cpotweCILByQk9';
  const keyClientKey = '80MZH7jY2av25Kj6r8ymnasCh3sPw5IffslpjeA7';
  const keyParseServerUrl = 'https://parseapi.back4app.com';

  var firstObject = ParseObject('FirstClass')
    ..set(
        'message', 'Hey ! First message from Flutter. Parse is now connected');
  await firstObject.save();

  print('done');

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, autoSendSessionId: true);
  runApp(const MeuMaterialApp());
}

class MeuMaterialApp extends StatelessWidget {
  const MeuMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.redAccent
                ),
                child: Text('Menu')),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Perfil'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Pagina1()
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.save),
              title: Text('Salvos'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Pagina2()
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.edit_note_sharp),
              title: Text('Lista'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Pagina3()
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.assessment_outlined),
              title: Text('Avaliações'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Pagina4()
                  ),
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Real Promos'),
        backgroundColor: Colors.redAccent,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Container(
                  alignment: Alignment.center,
                    width: 300,
                    height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(10),
                  ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            Image.asset('asset/images/dell.png'),
                            Text('Dell G15')
                          ],
                        ),
                        Text(' RTX 3050 e Ryzen 5 5600')
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          //TextButton(onPressed: (){}, child: Text('Salvar')),
                        ),
                      ],
                    )
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

