import 'package:flutter/material.dart';

void main() => runApp(const AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar Jennifer Garcia",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MiPaginaInicial(),
    );
  }
} //Fin AppMiTabBar

//Stateful
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} // MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar Jennifer Garcia"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              text: "Libro",
              icon: Icon(Icons.book),
            ),
            Tab(
              text: "Autor",
              icon: Icon(Icons.person),
            ),
            Tab(
              text: "Carrito",
              icon: Icon(Icons.shopping_cart),
            ),
            Tab(
              text: "Mi lista",
              icon: Icon(Icons.list),
            )
          ] // Fin de tab
              ), // Fin bottom TabBar
        ),
        body: TabBarView(children: const <Widget>[
          Center(
            child: Text(
              "La metamorfosis",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Franz Kafka",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "El carrito esta vacio",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Libro 1",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ] //Jardin de niños
            ), //Fin de TabBarView
      ), //Fin Scaffold
    ); // DefaultTabController
  } //Fin Widget
} //_MiPaginaInicialState
