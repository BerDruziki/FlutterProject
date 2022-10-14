import 'dart:math';

import 'package:flutter/material.dart';


class Pagina2 extends StatelessWidget {
  const Pagina2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Seus Salvos'),
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
                    height: 250,
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
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: max(50, 50),
                                            height: max(50, 50),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Icon(Icons.save),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              width: max(100, 100),
                                              height: max(90, 90),
                                            child: SizedBox(
                                              width: 10,
                                              height: 1,
                                              child: Padding(
                                                padding: EdgeInsets.all(12.10),
                                                child: ElevatedButton(onPressed: (){}, child: Text('Excluir')),
                                              ),
                                            ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  //Center(child: ElevatedButton(onPressed: (){}, child: Text('Salvar'))),
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