import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFecca00),
      appBar: AppBar(
        title: Text("Estação Rede Fácil", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xFF014901),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text("Quem Somos?", style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
                  Image.asset('images/brasao.png', height: 250,),
                  Text("www.gruporedefacil.com.br", style: TextStyle(fontSize: 20, color: Color(0xFF014901)), textAlign: TextAlign.center,),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("PAPO FÁCIL", style: TextStyle(fontSize: 20, color:Color(0xFF014901) ),),
                    ),
                    Text("O nosso papo fácil, é um papo reto, um papo direto sobre o mundo da Construção! Quinzenalmente traremos novidades, dicas, humor e informações para vocês nossos seguidores!",
                      style: TextStyle(),
                      textAlign: TextAlign.justify,
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text("VENDEDOR ESPECIALISTA", style: TextStyle(fontSize:  20, color:Color(0xFF014901)),),
                    ),
                    Text("Incentivamos os nossos vendedores a se tornarem especialistas em nossos parceiros! A cada curso realizado com as marcas parceiras, nossos vendedores adquirem especialização na venda de produtos de cada empresa. Este diferencial resulta em um atendimento muito mais qualificado, com foco nas necessidades de cada cliente.",
                      style: TextStyle(),
                      textAlign: TextAlign.justify,
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text("ESTAÇÃO REDE FÁCIL", style: TextStyle(fontSize:  20, color:Color(0xFF014901)),),
                    ),
                    Text("A Estação Rede Fácil é uma rádio criada como forma de estreitar os laços e servir como uma ponte de comunicação entre a Rede e os seus clientes. Além de uma programação musical moderna e selecionada, nossos clientes ficam por dentro das novidades e promoções. Também recebem informativos com dicas sobre os nossos produtos.",
                      style: TextStyle(),
                      textAlign: TextAlign.justify,
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Column(
                        children: <Widget>[
                          Text("Contato", style: TextStyle(fontSize: 30),),
                          Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            child: (
                                Text("Endereço: Escritório Central - Rua Joao Vital Guedes nº 268 - Centro Juazeirinho - PB", textAlign: TextAlign.justify,)
                            ),
                          ),
                          Text("Telefone: (83) 99984.2368", textAlign: TextAlign.justify,)
                        ],
                      ),
                    )
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
