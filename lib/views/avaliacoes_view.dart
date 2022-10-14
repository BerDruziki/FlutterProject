import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Pagina4 extends StatelessWidget {
  const Pagina4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Avaliações'),
        backgroundColor: Colors.redAccent,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 20,
                ),
                Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Column(
                                children: [
                                  Column(
                                    children: <Widget> [
                                      Image.asset('asset/images/dell.png'),
                                      Text('Salvo : Dell G15')
                                    ],
                                  ),
                                  Text('RTX 3050 e Ryzen 5 5600'),
                                  SingleChildScrollView(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          TextField(),
                                          SizedBox(
                                            height: 10,
                                            width: 10,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              //child: Icon(Icons.save),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              //ElevatedButton(onPressed: (){}, child: Text('Salvar'))
                              Column(
                                children: [
                                  SizedBox(
                                    width: 20,
                                    height: 20,
                                  //Text('Sua avaliação sobre o produto:')
                                  //Text('Produto do balacobaco')
                                  ),
                                  TextField(),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}