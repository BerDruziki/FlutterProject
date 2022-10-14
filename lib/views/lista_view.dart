import 'package:flutter/material.dart';


class Pagina3 extends StatelessWidget {
  const Pagina3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Sua Lista'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Text('Liste abaixo o que precisa:'),
          TextField(),
          Center(
            child: Column(
              children: [
                TextField(),
                Column(
                  children: [
                    TextField(),
                    Column(
                      children: [
                        Text(
                          '',
                          style: TextStyle(fontSize: 32),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}