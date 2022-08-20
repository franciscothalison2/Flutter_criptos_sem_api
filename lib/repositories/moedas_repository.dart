import 'package:criptos/models/moedas.dart';

class MoedaReposioty{
  static List<Moeda> tabela = [
    Moeda(
        icone: "images/bitcoin.png",
        nome: "Bitcoin",
        sigla: "BIT",
        preco: 110721.80
    ),
    Moeda(
        icone: "images/doecoin.png",
        nome: "Doecoin",
        sigla: "DOE",
        preco: 125.58
    ),
    Moeda(
        icone: "images/ethereum.png",
        nome: "Ethereum",
        sigla: "ETH",
        preco: 8491.06
    ),
    Moeda(
        icone: "images/litecoin.png",
        nome: "Litecoin",
        sigla: "LIT",
        preco: 285.87
    ),
    Moeda(
        icone: "images/ripple.png",
        nome: "Ripple",
        sigla: "RIP",
        preco: 1.69
    ),
    Moeda(
        icone: "images/tether.png",
        nome: "Tether",
        sigla: "TET",
        preco: 8452.63
    ),
    Moeda(
        icone: "images/cardano.png",
        nome: "Cardano",
        sigla: "ADA",
        preco: 2.36
    ),
    Moeda(
        icone: "images/xrp.png",
        nome: "Xrp",
        sigla: "XRP",
        preco: 1.78
    ),
    Moeda(
        icone: "images/usdcoin.png",
        nome: "Usd Coin",
        sigla: "USDC",
        preco: 5.20
    ),
  ];

}