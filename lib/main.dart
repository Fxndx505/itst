//comentario desde la rama VScode hacia la rama master

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Unidad 1',
        debugShowCheckedModeBanner: false, //quitar la marca de debug
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ListViewExample());
  }
}

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        children: [
          CardExample(
            url:
                "https://lenguajesdeprogramacion.net/wp-content/uploads/2018/08/java-lenguaje-de-programacion-logo.png",
            titulo: "Programación en Java",
          ),
          CardExample(
            url:
                "https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/media/image/2019/06/python.jpg",
            titulo: "Programación en Python",
          ),
          CardExample(
            url:
                "https://www.codigosinformaticos.com/wp-content/uploads/2019/07/c.jpg",
            titulo: "Programación en C#",
          ),
        ],
      ),
    );
  }
}

class CardExample extends StatelessWidget {
  final url;
  final titulo;
  const CardExample({Key key, @required this.url, @required this.titulo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                url,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(titulo),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Ver detalles",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Inscribirse"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
