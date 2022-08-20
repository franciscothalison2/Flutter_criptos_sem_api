import 'package:criptos/repositories/moedas_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MoedasPages extends StatelessWidget {
  const MoedasPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabela = MoedaReposioty.tabela;

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
              leading: Image.asset(tabela[moeda].icone),
              title: Text(tabela[moeda].nome),
              trailing: Text(tabela[moeda].preco.toString()),

            );
          },


        ),
      ),
    );
  }
}
