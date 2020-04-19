import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:redefacilconstrucao/ui/sobre_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  WebViewController _controllerWV;
  int _currentSelection = 0;
  Map<int, Widget> _children = {
    0: Text('     Tradicional     '),
    1: Text('     Gospel     '),
  };

  void alterarEstacao(){
    if(_currentSelection==0){
      _controllerWV.loadUrl("http://www.estacaoredefacil.com.br/mobile_trad_new.html");
    }else{
      _controllerWV.loadUrl("http://www.estacaoredefacil.com.br/mobile_gosp_new.html");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFecca00),
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Image.asset('images/brasao.png', height: 20,),
            Text(" Estação Rede Fácil", style: TextStyle(color: Colors.white, fontSize: 17),),
          ],
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF014901),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Icon(FontAwesomeIcons.briefcase, size: 20,),
                  Text("A Rede", style: TextStyle(fontSize: 10),)
                ],
              ),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre()));
            },
          )
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Image.asset('images/brasao.png', height: 100,),
            ),
            Column( crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Rede Fácil Construção',
                  style: TextStyle(
                    color: Color(0xFF014901),
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'www.gruporedefacil.com.br',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text('Rua Vital Guedes, Juazeirinho-PB', style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
                Text('(83) 99984.2368', style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            ListTile(
              onTap: (){
                launch("https://www.facebook.com/redefacilcasaeconstrucao/");
              },
              leading: Icon(FontAwesomeIcons.facebook),
              title: Text('Facebook'),
            ),
            ListTile(
              onTap: (){
                launch("https://www.instagram.com/redefacilconstrucao/");
              },
              leading: Icon(FontAwesomeIcons.instagram),
              title: Text('Instagram'),
            ),
            ListTile(
              onTap: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('images/brasao.png', scale: 5,),
                        Text("Rede Fácil Construção", style: TextStyle(fontSize: 20, color: Color(0xFF014901), fontWeight: FontWeight.bold),),
                        Text("www.gruporedefacil.com.br", style: TextStyle(color: Colors.grey, fontSize: 15),),

                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          child: Text("A REDE DE CONSTRUÇÃO QUE MAIS CRESCE NO NORDESTE!\n36 LOJAS e CRESCENDO!\n\nRua Vital Guedes, Juazeirinho, Paraíba"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("Developed by ATD Sistemas"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("www.atdsistemas.com.br", style: TextStyle(color: Colors.blue),),
                        )
                      ],
                    ),
                  );
                });
              },
              leading: Icon(Icons.info_outline),
              title: Text('Sobre'),
            ),
            ListTile(
                onTap: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: Text("Sair"),
                      content: Text("Deseja sair realmente da Estação?"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("Cancelar"),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        ),
                        FlatButton(
                          child: Text("Sim"),
                          onPressed: (){
                            exit(0);
                          },
                        )
                      ],
                    );
                  });
                },
                leading: Icon(Icons.exit_to_app),
                title: Text('Sair', style: TextStyle(color:  Color(0xFF014901), fontSize: 15),) ,
              ),
          ],
        ),
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Image.asset('images/estacao.png', height: 130,),
              MaterialSegmentedControl(
                horizontalPadding: EdgeInsets.only(bottom: 10, top: 20),
                children: _children,
                selectionIndex: _currentSelection,
                borderColor: Color(0xFF014901),
                selectedColor: Color(0xFF014901),
                unselectedColor: Colors.white,
                disabledChildren: [],
                onSegmentChosen: (index) {
                  setState(() {
                    _currentSelection = index;
                    alterarEstacao();
                  });
                  },
              ),


              Container(
                height: 130,
                child: WebView(
                  initialUrl: 'http://www.estacaoredefacil.com.br/mobile_trad_new.html',
                  javascriptMode: JavascriptMode.unrestricted,
                  onWebViewCreated: (WebViewController webViewController) {
                    _controllerWV = webViewController;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("A REDE DE\nCONSTRUÇÃO\nQUE MAIS CRESCE\nNO NORDESTE!", style: TextStyle(fontSize: 20, color: Color(0xFF014901), fontWeight: FontWeight.bold),),
                    Image.asset('images/avatar.png', height: 100,),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("www.estacaoredefacil.com.br", style: TextStyle(fontSize: 15, color: Color(0xFF014901),)),
              )
            ],
          ),
        )
    );
  }
}
