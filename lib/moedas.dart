import 'package:criptos/repositories/moedas_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'models/moedas.dart';


class MoedasPages extends StatefulWidget {
  const MoedasPages({Key? key}) : super(key: key);

  @override
  State<MoedasPages> createState() => _MoedasPagesState();
}

class _MoedasPagesState extends State<MoedasPages> {
  final tabela = MoedaReposioty.tabela;

  //////////////////////////////////////////////////////////////////////
  NumberFormat real = NumberFormat.currency(locale: 'pt_br', name: 'R\$');
  ///////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////
  List<Moeda> moedasSelecionadas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criptos"),
      ),
      body: Center(
        child: ListView.separated(
          padding: EdgeInsets.all(16),
          itemCount: tabela.length,
          separatorBuilder: (__ , _) =>  Divider(),
          itemBuilder: (BuildContext, int moeda){
            return ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              
              leading:(moedasSelecionadas.contains(tabela[moeda])) ?
                  
              CircleAvatar(
                child: Icon(Icons.check),
              ) :

              SizedBox(
                  child: Image.asset(tabela[moeda].icone
                  ),
                width: 40,
              ),
              title: Text(tabela[moeda].nome, style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Text(real.format(tabela[moeda].preco)),
              onLongPress: (){
                setState(() {
                  if(moedasSelecionadas.contains(tabela[moeda])){
                    moedasSelecionadas.remove(tabela[moeda]);
                  }
                  else{
                    moedasSelecionadas.add(tabela[moeda]);
                  }
                });
                print(tabela[moeda].nome);
                print(moedasSelecionadas.length);

              }, // onlongpress

              selected: moedasSelecionadas.contains(tabela[moeda]),
              selectedTileColor: Colors.green[50],

            );
          },


        ),
      ),
    );
  }
}
